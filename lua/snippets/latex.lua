local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local fmt = require("luasnip.extras.fmt").fmt
local extras = require("luasnip.extras")
local m = extras.m
local l = extras.l
local rep = extras.rep
local postfix = require("luasnip.extras.postfix").postfix

-- TODO: fig, fig2, 

local equation = s("equation", {
    t({"\\begin{equation}", "\t"}),
    -- t({"\\begin{equation}", ""}),
    i(1),
    t({"", "\\end{equation}"}, ""),
    i(0)
})

local align = s("align", {
    t({"\\begin{align}", "\t"}),
    i(1), t("&"), i(2),
    t({" \\\\", "\\end{align}"}, ""),
    i(0)
})

local frac = s("frac", {
    t("\\frac{"), i(1), t("}{"), i(2), t("}"), i(0)
})

local ss = s({trig="ss", wortTrig=false}, {
    t("^{"), i(1), t("}"), i(0)
})

-- local __ = s("__", {
local __ = s({trig="__", wortTrig=false}, {
    t("_{"), i(1), t("}"), i(0)
})

-- snippet ss "Super Script" i
-- ^{$1}$0
-- endsnippet
--
-- snippet __ "subscript" i
-- _{${1}}$0
-- endsnippet
--
-- snippet srt "Square Root" wi
-- \sqrt{${1:${VISUAL}}}$0
-- endsnippet
--
-- snippet bf "Symbol Bold" wi
-- \symbf{${1:${VISUAL}}}$0
-- endsnippet
--
-- snippet v "Vector" wi
-- \ve{${1:${VISUAL}}}$0
-- endsnippet
--
-- snippet cal "Symbol Calligraphy" wi
-- \symcal{${1:${VISUAL}}}$0
-- endsnippet
--
-- snippet rm "Text" wi
-- \symrm{${1:${VISUAL}}}$0
-- endsnippet
--
-- snippet pmat "Pmat" w
-- \begin{pmatrix} $1 \end{pmatrix} $0
-- endsnippet
--
-- snippet bmat "Bmat" w
-- \begin{bmatrix} $1 \end{bmatrix} $0
-- endsnippet
ls.add_snippets("tex", {
    equation, align, frac, ss, __
})
-- snippet beg "begin{} / end{}" bi
-- \begin{$1}
-- 	${0:${VISUAL}}
-- \end{$1}
-- endsnippet
--
-- snippet fig "Figure environment" bi
-- \begin{figure}[${1:H}]
-- 	\centering
-- 	\includegraphics[${2:width=0.8\linewidth}]{${3:fig_path}}
-- 	\caption{${4:$3}}
-- 	\label{fig:${5:${3/\W+/-/g}}}
-- \end{figure}
-- endsnippet
--
-- snippet fig2 "Figure environment2" bi
-- \begin{figure}[${1:H}]
-- 	\begin{minipage}[b]{0.48\linewidth}
-- 		\centering
-- 		\includegraphics[${2:width=\linewidth}]{${3:fig_path}}
-- 		\subcaption{${4:$3}}
-- 	\end{minipage}
-- 	\begin{minipage}[b]{0.48\linewidth}
-- 		\centering
-- 		\includegraphics[${5:width=\linewidth}]{${6:fig_path}}
-- 		\subcaption{${7:$6}}
-- 	\end{minipage}
-- 	\caption{${8:cap}}
-- 	\label{fig:${8:${9/\W+/-/g}}}
-- \end{figure}
-- endsnippet
--
-- snippet enum "Enumerate" bi
-- \begin{enumerate}
-- 	\item ${0:${VISUAL}}
-- \end{enumerate}
-- endsnippet
--
-- snippet item "Itemize" bi
-- \begin{itemize}
-- 	\item ${0:${VISUAL}}
-- \end{itemize}
-- endsnippet
--
-- snippet tab "tabular / array environment" b
-- 	\begin{${1:t}${1/(t)$|(a)$|(.*)/(?1:abular)(?2:rray)/}}{${2:c}}
-- 	$0${2/(?<=.)(c|l|r)|./(?1: & )/g}
-- 	\end{$1${1/(t)$|(a)$|(.*)/(?1:abular)(?2:rray)/}}
-- endsnippet
--
-- snippet table "Table environment" b
-- \begin{table}[${1:htpb}]
-- 	\centering
-- 	\caption{${2:caption}}
-- 	\label{tab:${3:label}}
--
-- 	\begin{${4:t}${4/(t)$|(a)$|(.*)/(?1:abular)(?2:rray)/}}{${5:c}}
-- 		$0${5/(?<=.)(c|l|r)|./(?1: & )/g}
-- 	\end{$4${4/(t)$|(a)$|(.*)/(?1:abular)(?2:rray)/}}
-- \end{table}
-- endsnippet
--
-- snippet inmath "Inline Math" w
-- \$${1}\$ $0
-- endsnippet
--
--
-- snippet lt "Label & Tag" i
-- \label{eq:${1}} \tag{${1}}
-- endsnippet
--
--
--
-- snippet () "Left( right)" w
-- \left( ${1:${VISUAL}} \right) $0
-- endsnippet
--
-- \left( ${1:${VISUAL}} \right) $0
-- endsnippet
--
-- snippet lr( "left( right)" i
-- \left( ${1:${VISUAL}} \right) $0
-- endsnippet
--
-- snippet lr| "left| right|" i
-- \left| ${1:${VISUAL}} \right| $0
-- endsnippet
--
-- snippet lr{ "left\{ right\}" i
-- \left\\{ ${1:${VISUAL}} \right\\} $0
-- endsnippet
--
-- snippet lrb "left\{ right\}" i
-- \left\\{ ${1:${VISUAL}} \right\\} $0
-- endsnippet
--
-- snippet lr[ "left[ right]" i
-- \left[ ${1:${VISUAL}} \right] $0
-- endsnippet
--
-- snippet sum "sum" w
-- \sum_{n=${1:1}}^{${2:\infty}} ${3:a_n z^n}
-- endsnippet
--
-- snippet part "d/dx" w
-- \frac{\partial ${1:V}}{\partial ${2:x}} $0
-- endsnippet
--
-- snippet bar "bar" wi
-- \bar{${1:${VISUAL}}}$0
-- endsnippet
--
-- snippet hat "hat" wi
-- \hat{${1:${VISUAL}}}$0
-- endsnippet
--
-- snippet dot "dot" wi
-- \dot{${1:${VISUAL}}}$0
-- endsnippet
--
-- snippet ddot "ddot" wi
-- \ddot{${1:${VISUAL}}}$0
-- endsnippet
--
-- snippet dddot "dddot" wi
-- \dddot{${1:${VISUAL}}}$0
-- endsnippet
--
-- snippet chap "Chapter" wi
-- \chapter{$1${VISUAL}}
-- endsnippet
--
-- snippet sec "Section" wi
-- \section{$1${VISUAL}}
-- endsnippet
--
-- snippet sec* "Section*" wi
-- \section*{$1${VISUAL}}
-- endsnippet
--
-- snippet sub "Subsection" wi
-- \subsection{$1${VISUAL}}
-- endsnippet
--
-- snippet sub* "Subsection*" wi
-- \subsection*{$1${VISUAL}}
-- endsnippet
--
-- snippet subsub "Subsection" wi
-- \subsubsection{$1${VISUAL}}
-- endsnippet
--
-- snippet subsub* "Subsubsection" wi
-- \subsubsection*{$1${VISUAL}}
-- endsnippet
--
