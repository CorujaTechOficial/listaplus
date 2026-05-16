#!/usr/bin/env python3
"""Generate premium brand assets for Lista Plus."""

from PIL import Image, ImageDraw, ImageFont
import math, os

# ── Brand Colors ──────────────────────────────────────────────────────────
G = {
    50: (232, 245, 233), 100: (200, 230, 201), 200: (165, 214, 167),
    300: (129, 199, 132), 400: (102, 187, 106), 500: (76, 175, 80),
    600: (67, 160, 71), 700: (46, 125, 50), 800: (27, 94, 32), 900: (13, 59, 19),
}
WHITE = (255, 255, 255)
GOLD = (255, 193, 7)
GOLD_DARK = (245, 175, 0)
FONT = "/System/Library/Fonts/SFNS.ttf"
FONT_H = "/System/Library/Fonts/HelveticaNeue.ttc"

def _f(size, bold=False):
    for p in [FONT, FONT_H, None]:
        if p:
            try: return ImageFont.truetype(p, size)
            except: pass
    return ImageFont.load_default()

def radial(size, inner, outer, cx_r=.35, cy_r=.30):
    w, h = size if isinstance(size, tuple) else (size, size)
    cx, cy = int(w * cx_r), int(h * cy_r)
    img = Image.new('RGBA', (w, h))
    md = math.sqrt(max(cx, w - cx) ** 2 + max(cy, h - cy) ** 2)
    for y in range(h):
        for x in range(w):
            d = math.sqrt((x - cx) ** 2 + (y - cy) ** 2)
            t = min(d / md, 1.0)
            img.putpixel((x, y), tuple(int(inner[i]*(1-t)+outer[i]*t) for i in range(3)))
    return img

def rbox(d, xy, r, **kw):
    d.rounded_rectangle(xy, radius=r, **kw)

def check(d, cx, cy, s, c, lw):
    d.line([(cx-.38*s, cy-.05*s), (cx-.12*s, cy+.35*s)], fill=c, width=lw)
    d.line([(cx-.12*s, cy+.35*s), (cx+.48*s, cy-.30*s)], fill=c, width=lw)

def plus(d, cx, cy, s, c, lw):
    h = s * 0.32
    d.line([(cx-h, cy), (cx+h, cy)], fill=c, width=lw)
    d.line([(cx, cy-h), (cx, cy+h)], fill=c, width=lw)


# ═══════════════════════════════════════════════════════════════════════════
# 1. APP ICON (512×512)
# ═══════════════════════════════════════════════════════════════════════════
def gen_icon():
    S = 512
    bg = radial(S, G[500], G[900], .35, .30)
    m = Image.new('L', (S, S), 0)
    ImageDraw.Draw(m).rounded_rectangle([8, 8, S-8, S-8], radius=100, fill=255)
    cv = Image.composite(bg, Image.new('RGBA', (S, S)), m)
    d = ImageDraw.Draw(cv)

    M = 88
    x1, y1, x2, y2 = M, M, S-M, S-M
    W, H = x2-x1, y2-y1

    # card shadow
    for i in range(3):
        o = 4 + i*2
        rbox(d, [x1+o, y1+o+4, x2+o, y2+o+4], 40, fill=(0,0,0,25-i*5))
    # card
    rbox(d, [x1, y1, x2, y2], 38, fill=WHITE)
    rbox(d, [x1+3, y1+3, x2-3, y2-3], 36, fill=None, outline=G[100], width=2)

    # checkmark
    ck = W * .22
    ckx, cky = x1+W*.48, y1+H*.30
    check(d, ckx, cky, ck, G[700], max(int(ck*.18), 7))
    cr = int(ck * 1.35)
    d.ellipse([ckx-cr, cky-cr, ckx+cr, cky+cr], outline=G[100], width=3)

    # gold star
    sx, sy = ckx+int(ck*.55), cky-int(ck*.40)
    d.ellipse([sx-4, sy-4, sx+4, sy+4], fill=GOLD_DARK)
    for a in [0, 45, 90, 135]:
        ex = sx + int(6*math.cos(math.radians(a)))
        ey = sy + int(6*math.sin(math.radians(a)))
        d.line([(sx, sy), (ex, ey)], fill=GOLD_DARK, width=2)

    # divider
    dy = y1 + H * .52
    d.line([(x1+W*.15, dy), (x2-W*.15, dy)], fill=G[100], width=2)

    # list lines
    ly0, lsp = y1+H*.60, H*.09
    llx, lrx = x1+W*.18, x2-W*.18
    lc = (*G[700], 60)
    for i, fw in enumerate([1.0, .82, .65]):
        ly = ly0 + i*lsp
        rx = lrx - (1-fw)*(lrx-llx)
        d.line([(llx, ly), (rx, ly)], fill=lc, width=5)

    # plus badge on last line
    py = ly0 + 2*lsp
    px = lrx - (1-.65)*(lrx-llx) + 22
    d.ellipse([px-9, py-9, px+9, py+9], fill=G[600])
    plus(d, px, py, 11, WHITE, 3)

    return cv


# ═══════════════════════════════════════════════════════════════════════════
# 2. FEATURE GRAPHIC (1024×500)
# ═══════════════════════════════════════════════════════════════════════════
def gen_feature():
    W, H = 1024, 500
    bg = radial((W, H), G[500], G[900], .30, .30)
    cv = Image.composite(bg, Image.new('RGBA', (W, H)), Image.new('L', (W, H), 255))
    d = ImageDraw.Draw(cv)

    # ── left side: circular icon preview ─────────────────────────────────
    ccx, ccy, cr = 230, 210, 130
    d.ellipse([ccx-cr-8, ccy-cr-8, ccx+cr+8, ccy+cr+8], fill=(255,255,255,25))
    d.ellipse([ccx-cr, ccy-cr, ccx+cr, ccy+cr], fill=None, outline=(255,255,255,80), width=3)

    # mini icon inside circle
    ir = cr - 15
    isz = int(ir * 2)
    ic = Image.new('RGBA', (isz, isz))
    idr = ImageDraw.Draw(ic)
    im = isz * .22
    idr.rounded_rectangle([im, im, isz-im, isz-im], int(isz*0.10), fill=WHITE)
    ick = isz * .28
    check(idr, isz*.48, isz*.34, ick, G[700], max(int(ick*.18), 4))
    # lines
    ilx, ily = im+isz*.10, isz-im-isz*.10
    ily0 = isz * .58
    for i, fw in enumerate([1.0, .80, .60]):
        ly = ily0 + i*isz*.07
        idr.line([(ilx, ly), (ily-(1-fw)*(ily-ilx), ly)], fill=(*G[700], 50), width=3)
    cv.paste(ic, (int(ccx-ir), int(ccy-ir)), ic)

    # "LISTA PLUS" below circle
    try:
        f_big = _f(32)
        bb = d.textbbox((0, 0), "LISTA PLUS", font=f_big)
        d.text((ccx-(bb[2]-bb[0])//2, ccy+cr+30), "LISTA PLUS", fill=WHITE, font=f_big)
    except:
        pass

    # decorative ring segments
    for a in range(0, 360, 30):
        rad = math.radians(a)
        r1, r2 = cr+13, cr+20
        x1 = ccx + r1 * math.cos(rad)
        y1 = ccy + r1 * math.sin(rad)
        x2 = ccx + r2 * math.cos(rad)
        y2 = ccy + r2 * math.sin(rad)
        d.line([(x1, y1), (x2, y2)], fill=(255,255,255,40), width=2)

    # ── right side: content ──────────────────────────────────────────────
    rx = 480
    ry = 75

    try:
        ft = _f(46)
        fs = _f(24)
        ff = _f(20)
        d.text((rx, ry), "Organize suas compras", fill=WHITE, font=ft)
        d.text((rx, ry+62), "com eficiência e praticidade", fill=G[100], font=fs)
    except:
        d.text((rx, ry), "Organize suas compras", fill=WHITE)
        d.text((rx, ry+62), "com eficiencia", fill=G[100])

    # feature bullets
    feats = [
        ("Listas ilimitadas", "Crie quantas listas precisar"),
        ("Orçamento mensal", "Controle seus gastos"),
        ("Backup na nuvem", "Seguro e sincronizado"),
    ]
    fy0 = ry + 135
    for i, (t, desc) in enumerate(feats):
        fy = fy0 + i * 58
        d.ellipse([rx, fy+2, rx+20, fy+22], fill=G[300])
        check(d, rx+10, fy+12, 10, WHITE, 3)
        try:
            d.text((rx+36, fy-2), t, fill=WHITE, font=ff)
            d.text((rx+36, fy+25), desc, fill=G[100], font=_f(16))
        except:
            d.text((rx+36, fy), t, fill=WHITE)

    # premium badge
    by = fy0 + 200
    bw = 130
    rbox(d, [rx, by, rx+bw, by+32], 16, fill=GOLD_DARK)
    try:
        fb = _f(15)
        bb = d.textbbox((0, 0), "PREMIUM", font=fb)
        tw = bb[2] - bb[0]
        d.text((rx+(bw-tw)//2, by+7), "PREMIUM", fill=G[900], font=fb)
    except:
        d.text((rx+30, by+7), "PREMIUM", fill=G[900])

    # decorative dots
    for row in range(4):
        for col in range(6):
            dx, dy = W-80-col*20, H-40-row*20
            d.ellipse([dx-2, dy-2, dx+2, dy+2], fill=(255,255,255,18))

    return cv


# ═══════════════════════════════════════════════════════════════════════════
# 3. IN-APP HORIZONTAL LOGO (transparent background)
# ═══════════════════════════════════════════════════════════════════════════
def gen_logo_horizontal():
    W, H = 300, 80
    cv = Image.new('RGBA', (W, H))
    d = ImageDraw.Draw(cv)

    # icon mark (mini checkmark + card)
    sz = 52
    ix, iy = 10, (H - sz) // 2
    d.rounded_rectangle([ix, iy, ix+sz, iy+sz], 10, fill=G[700])
    # simplified white card inside
    m2 = sz * .15
    d.rounded_rectangle([ix+m2, iy+m2, ix+sz-m2, iy+sz-m2], 7, fill=WHITE)
    ck_s = sz * .35
    check(d, ix+sz*.48, iy+sz*.40, ck_s, G[700], max(int(ck_s*.18), 3))
    # mini lines
    ly = iy + sz * .62
    for i, fw in enumerate([.75, .55]):
        lx1 = ix + sz * .20
        lx2 = ix + sz * (.20 + fw * .60)
        d.line([(lx1, ly+i*6), (lx2, ly+i*6)], fill=(*G[700], 60), width=2)

    # "Lista Plus" text
    tx = ix + sz + 14
    ty = H // 2 + 1
    try:
        f_big = _f(28)
        d.text((tx, ty - 18), "Lista", fill=G[700], font=f_big)
        f_plus = _f(28)
        d.text((tx + 70, ty - 18), "Plus", fill=GOLD_DARK, font=f_plus)
        f_sm = _f(12)
        d.text((tx, ty + 10), "Shopping List", fill=(*G[700], 120), font=f_sm)
    except:
        d.text((tx, ty - 10), "Lista Plus", fill=G[700])
        d.text((tx, ty + 14), "Shopping List", fill=(*G[700], 120))

    return cv


# ═══════════════════════════════════════════════════════════════════════════
# 4. IN-APP ICON MARK (transparent background, 512×512)
# ═══════════════════════════════════════════════════════════════════════════
def gen_logo_icon():
    S = 512
    cv = Image.new('RGBA', (S, S))
    d = ImageDraw.Draw(cv)

    # rounded square background
    pad = 40
    rbox(d, [pad, pad, S-pad, S-pad], 60, fill=G[700])
    # white card inside
    m = S * .15
    rbox(d, [pad+m, pad+m, S-pad-m, S-pad-m], 40, fill=WHITE)
    rbox(d, [pad+m+3, pad+m+3, S-pad-m-3, S-pad-m-3], 38,
         fill=None, outline=G[100], width=2)

    W, H = S-2*pad-2*m, S-2*pad-2*m
    x0, y0 = pad+m, pad+m

    # checkmark
    ck = W * .28
    ckx, cky = x0+W*.48, y0+H*.34
    check(d, ckx, cky, ck, G[700], max(int(ck*.18), 8))

    # divider
    dy = y0 + H * .56
    d.line([(x0+W*.15, dy), (x0+W*.85, dy)], fill=G[100], width=2)

    # lines
    ly0, lsp = y0+H*.63, H*.08
    llx, lrx = x0+W*.18, x0+W*.82
    lc = (*G[700], 50)
    for i, fw in enumerate([1.0, .78, .55]):
        ly = ly0 + i*lsp
        rx = lrx - (1-fw)*(lrx-llx)
        d.line([(llx, ly), (rx, ly)], fill=lc, width=5)

    # plus
    py = ly0 + 2*lsp
    px = lrx - (1-.55)*(lrx-llx) + 20
    d.ellipse([px-8, py-8, px+8, py+8], fill=G[600])
    plus(d, px, py, 10, WHITE, 3)

    return cv


# ═══════════════════════════════════════════════════════════════════════════
# MAIN
# ═══════════════════════════════════════════════════════════════════════════
def main():
    out = os.path.join(os.path.dirname(__file__), '..', 'store_assets')
    os.makedirs(out, exist_ok=True)

    # 1. App icon 512x512
    icon = gen_icon()
    p = os.path.join(out, 'app_icon_512.png')
    icon.save(p)
    print(f"  {p}  ({os.path.getsize(p)} bytes)")

    # 2. App icon 192x192 (resized)
    i192 = icon.resize((192, 192), Image.LANCZOS)
    p = os.path.join(out, 'app_icon_192.png')
    i192.save(p)
    print(f"  {p}  ({os.path.getsize(p)} bytes)")

    # 3. Feature graphic
    fg = gen_feature()
    p = os.path.join(out, 'feature_graphic_1024x500.png')
    fg.save(p)
    print(f"  {p}  ({os.path.getsize(p)} bytes)")

    # 4. In-app horizontal logo
    hl = gen_logo_horizontal()
    p = os.path.join(out, 'logo_horizontal.png')
    hl.save(p)
    print(f"  {p}  ({os.path.getsize(p)} bytes)")

    # 5. In-app icon mark
    li = gen_logo_icon()
    p = os.path.join(out, 'logo_icon.png')
    li.save(p)
    print(f"  {p}  ({os.path.getsize(p)} bytes)")

    print("\nFeito! 5 assets gerados em store_assets/")


if __name__ == '__main__':
    main()
