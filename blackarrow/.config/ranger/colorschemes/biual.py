from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import *

class Solarized(ColorScheme):
    progress_bar_color = blue

    def use(self, context):
        fg, bg, attr = default_colors

        if context.reset:
            return default_colors

        elif context.in_browser:
            fg = 7
            if context.selected:
                attr = reverse
            else:
                attr = normal
            if context.empty or context.error:
                bg = 1
                fg = 0
                attr |= bold
            if context.border:
                fg = default
            if context.media:
                if context.image:
                    fg = 2
                    attr |= bold
                else:
                    fg = 1
                    attr |= bold
            if context.container:
                fg = 4
                attr |= bold
            if context.directory:
                fg = 4
                attr |= bold
            elif context.executable and not \
                    any((context.media, context.container,
                        context.fifo, context.socket)):
                fg = 3
                attr |= bold
            if context.socket:
                fg = 5
                bg = 0
                attr |= bold
            if context.fifo:
                fg = 5
                bg = 0
                attr |= bold
            if context.device:
                fg = 2
                bg = 0
                attr |= bold
            if context.link:
                fg = context.good and 4 or 4
                bg = context.bad and 4
                attr |= bold
            if context.tag_marker and not context.selected:
                attr |= bold
                if fg in (red, magenta):
                    fg = white
                else:
                    fg = red
            if not context.selected and (context.cut or context.copied):
                fg = 8
                attr |= bold
            if context.main_column:
                if context.selected:
                    attr |= bold
                if context.marked:
                    attr |= bold
                    bg = 8
            if context.badinfo:
                if attr & reverse:
                    bg = 1
                else:
                    fg = 1

        elif context.in_titlebar:
            attr |= bold
            if context.hostname:
                fg = context.bad and 4 or 4
                bg = context.bad and 0
            elif context.directory:
                fg = 4
            elif context.tab:
                fg = context.good and 4 or 8
                bg = 0
            elif context.link:
                fg = 4

        elif context.in_statusbar:
            if context.permissions:
                if context.good:
                    fg = 4
                elif context.bad:
                    fg = 4
            if context.marked:
                attr |= bold | reverse
                fg = 8
            if context.message:
                if context.bad:
                    attr |= bold
                    fg = 4
                    bg = 0
            if context.loaded:
                bg = self.progress_bar_color

        if context.text:
            if context.highlight:
                attr |= reverse

        if context.in_taskview:
            if context.title:
                fg = 1

            if context.selected:
                attr |= reverse

            if context.loaded:
                if context.selected:
                    fg = self.progress_bar_color
                else:
                    bg = self.progress_bar_color

        return fg, bg, attr
