" modified from Vivek Venugopalan's .vimrc tweaks for use with DocBook 4.1.
" which was revised from Dan York's .vimrc 

" template for an article
imap ,art <?xml version="1.0" encoding="UTF-8"?><CR><!DOCTYPE article PUBLIC "-//OASIS//DTD DocBook XML V4.2//EN" "http://www.oasis-open.org/docbook/xml/4.2/docbookx.dtd"><CR><article id=""><CR><articleinfo><CR><title>Title</title><CR><author><CR><firstname>Ashley</firstname><CR><othername>J.S</othername><CR><surname>Mills</surname><CR><affiliation><CR><address><email>ug55axm@cs.bham.ac.uk</email></address><CR></affiliation><CR></author><CR><copyright><CR><year>2002</year><CR><holder role="mailto:ug55axm@cs.bham.ac.uk">The University Of Birmingham</holder><CR></copyright><CR></articleinfo><CR><CR><sect1 id="id"><title>blah</title><CR><para>blah blah blah</para><CR></sect1><CR></article><ESC>:0<CR>jjeeeh:w<CR>:e!<CR>i

" header and setup info for a book
imap ,dtbk <!DOCTYPE BOOK PUBLIC "-//OASIS//DTD DocBook V4.2//EN">
imap ,bk <book><CR><bookinfo><CR><title></title><CR><author><CR><firstname></firstname><CR><surname></surname><CR></author><CR><address><email></email></address><CR><copyright><CR><year></year><CR><holder></holder><CR></copyright><CR><revhistory><CR></revhistory><CR></bookinfo><CR><CR></book><esc>12k$bba
"Internal subset declaration
imap ,et <!ENTITY TODO-key "TODO-value"><CR>
imap ,rev <revision><CR><revnumber></revnumber><CR><date></date><CR><authorinitials></authorinitials><CR><revremark></revremark><CR></revision><esc>4k$bba

imap ,pp <para><CR></para><esc>k$a

" header and setup info
imap ,dtx <?xml version="1.0"?><CR><!DOCTYPE article PUBLIC "-//OASIS//DTD DocBook XML V4.1.2//EN"<CR>"http://www.oasis-open.org/docbook/xml/4.1.2/docbookx.dtd">
imap ,dts <!DOCTYPE BOOK PUBLIC "-//OASIS//DTD DocBook V4.1//EN">
imap ,bk <book><CR><bookinfo><CR><title></title><CR></bookinfo><CR><CR></book><esc>kkk$bba
imap ,ar <article><CR><articleinfo><CR><title></title><CR></articleinfo><CR><CR></article><esc>kkk$bba

" character formatting
imap ,em <emphasis></emphasis><esc>bba
imap ,es <emphasis role="strong"></emphasis><esc>bbla
imap ,lt <literal></literal><esc>bba

" links
imap ,ul <ulink url=""></ulink><esc>bbla
imap ,lk <link linkend=""></link><esc>bbla
imap ,le <link linkend="" endterm="_title"/><esc>BBeei

" menu
imap ,gm <guimenu></guimenu><esc>bba
imap ,mi <guimenuitem></guimenuitem><esc>bba
imap ,mc <menuchoice><guimenu></guimenu></menuchoice><esc>bbbba
imap ,gl <guilabel></guilabel><esc>bba
imap ,gb <guibutton></guibutton><esc>bba

" lists
" note that ',l2' was created solely to fit into ,il and ,ol
imap ,li <listitem><CR><para><CR></para><CR></listitem><esc>kk$a
imap ,l2 <listitem><CR><para><CR></para><CR></listitem>
imap ,il <itemizedlist><CR>,l2<CR></itemizedlist><esc>kkk$a
imap ,ol <orderedlist><CR>,l2<CR></orderedlist><esc>kkk$a
imap ,ve <varlistentry><CR><term></term><CR>,l2<CR></varlistentry>
imap ,vl <variablelist><CR><title></title><CR>,ve<CR></variablelist>

" sections
imap ,s1 <sect1 id=""><CR><title></title><CR><para><CR></para><CR></sect1><esc>kkkk$bla
imap ,s2 <sect2 id=""><CR><title></title><CR><para><CR></para><CR></sect2><esc>kkkk$bla
imap ,s3 <sect3 id=""><CR><title></title><CR><para><CR></para><CR></sect3><esc>kkkk$bla
imap ,se <section>  <title></title><CR><para><CR></para><CR></section><esc>kkk$bbbbla
imap ,ch <chapter id=""><CR><title></title><CR><para><CR></para><CR></chapter><esc>kkk$bba

" images
imap ,mo <mediaobject><CR><imageobject><CR><imagedata fileref="" format="" align="center"/><CR></imageobject><CR><textobject><phrase></phrase></textobject><CR></mediaobject><esc>kkkwwwwla
imap ,fi <figure id=""><CR><title></title><CR><titleabbrev id=""></titleabbrev><CR><mediaobject><CR><imageobject><CR><imagedata fileref="" format="PNG" align="center"/><CR></imageobject><CR></mediaobject><CR></figure><ESC>kkkkkkkkwla

" tables
imap ,tb <table frame="all"><CR><title></title><CR><tgroup cols="2"><CR><thead><CR></thead><CR><tbody><CR></tbody><CR></tgroup><CR></table><esc>kk
imap ,ro <row><CR><entry></entry><CR></row><esc>k$bba
imap ,en <entry></entry><esc>bba

" Q and A sets
imap ,qq <question><CR><para></para><CR></question><esc>k$bba
imap ,qa <answer><CR><para></para><CR></answer><esc>k$bba
imap ,qe <qandaentry><CR></qandaentry><esc>O
imap ,qs <qandaset><CR></qandaset><esc>O
imap ,qd <qandadiv><CR><title></title><CR></qandadiv><esc>k$bba

" other objects
imap ,ti <title></title><esc>bba
imap ,fn <filename></filename><esc>bba
imap ,fo <footnote><para></para></footnote>
imap ,pl <programlisting><CR></programlisting><esc>O
imap ,sb <sidebar><CR><title></title><CR><para></para><CR></sidebar>
imap ,sc <screen></screen><ESC>bba
imap ,pr <prompt></prompt><ESC>bba
imap ,no <note><CR><para></para><CR></note>
imap ,w  <warning><CR><para></para><CR></warning>
imap ,ip <important><CR><para></para><CR></important>
imap ,co <callout arearefs=""><cr><para></para><cr><programlisting><cr>blah<cr></programlisting><cr><para><cr>decrip<cr></para><cr></callout><esc>kkkkkkkkwla
imap ,cm <command></command><esc>bba
imap ,bq <blockquote><CR></blockquote><esc>O
imap ,qu <quote></quote><esc>bba
imap ,op <option></option><esc>bba
imap ,ui <userinput></userinput><esc>bba
imap ,ac <acronym></acronym><esc>bba
imap ,re <replaceable></replaceable><esc>bba
imap ,ev <envar></envar><esc>bba
imap ,kc <keycap></keycap><esc>bba
imap ,kk <keycombo><keycap></keycap></keycombo><esc>bbbba

" macro for character data
imap ,cd <![CDATA[]]><esc>$ba

" comment
imap ,< <!--  --><ESC>bhi
imap ,{ <!--  {{{ --><ESC>bbhi
imap ,} <!-- }}} -->

" macros for DocBook XML Slides using Norman Walsh's slides DocType
imap ,fl <foil><title></title><CR><para><CR></para><CR></foil><esc>kkk$bba
