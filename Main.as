CTrackMania@ g;
bool shadowsDisabled = false;
int o_TR;

void Main() {
    @g = cast<CTrackMania>(GetApp());
    o_TR = g.Viewport.TextureRender;
    while (true) {
        g.Viewport.TextureRender = shadowsDisabled ? 1 : 2;
        yield();
    }
}

void RenderMenu() {
    if (UI::MenuItem(Icons::Sun + " Toggle shadows", "", shadowsDisabled)) {
        shadowsDisabled = !shadowsDisabled;
    }
}

void OnDestroyed() {
    g.Viewport.TextureRender = o_TR;
}