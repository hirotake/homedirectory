homedirectory
=============

## List of dot files and tools

### Linux
- [Vim](http://www.vim.org/)
- [RVM](https://rvm.io/)
- [Git](http://git-scm.com/)
- [Subversion](http://subversion.tigris.org/)
- [w3m](http://w3m.sourceforge.net/index.en.html)
- [Markdown.pl](http://daringfireball.net/projects/markdown/)
- [nkf Network Kanji Filter](http://en.sourceforge.jp/projects/nkf/)
- [GnuPG](http://www.gnupg.org/)
- [ack](http://github.com/petdance/ack)

- Rakefile
- .bashrc
- .rpmmacros
- .wgetrc
- .w3mrc
- .gnupg/gpg.conf
- [.vimrc](https://github.com/hirotake/vimfiles/blob/master/vimrc)
- [.gvimrc](https://github.com/hirotake/vimfiles/blob/master/gvimrc)

## Dot Files

## Windows
- [Kaoriya version of Vim](http://www.kaoriya.net/software/vim) for Windows
- Fiddler2
- bludwind
- putty
- JSONedit
- SOL4
- HttpWatch
- Firebug
- Wireshark
- Charles Proxy
- 7-Zip
- Handbrake
- nodoka
- R
- TortoiseSVN
- TrueCrypt
- VMware Workstation
- VirtualBox
- COMODO Firewall
- AVAST
- Opera
- Skype
- SFTP Net Drive
- Bullzip
- Audacity
- Audible
- DAEMON Tools Lite
- Frieve Editor
- Graphviz
- MP3Gain
- 95cursor
- Bz
- Cassave
- CraivingExplorer
- DbVisualizer
- FileCaptor
- fs229
- GIMPPortable
- Git
- PDIC
- Rhino
- Subversion
- Terapad
- UnixUtils
- Unison
- VirtualDub
- VobBlanker
- vlc
- WinSCP
- yagrep
- curl
- wget
- tcpview
- Process Explorer
- WinShot
- Becky!
- PhantomJS
- CasperJS

## Tools

### [Vim](http://www.vim.org/)

I use [Kaoriya version of Vim](http://www.kaoriya.net/software/vim) for better Japanese support on Windows.

### [RVM](https://rvm.io/)

<pre>
<code class="shell">
\curl -L https://get.rvm.io | bash -s stable --ruby
echo "source /home/hirotake/.rvm/scripts/rvm" >> ~/.bashrc
</code>
</pre>

#### Note for CentOS 6.x
<pre>
<code class="shell">
sudo su -c 'rpm -Uvh http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-7.noarch.rpm'
yum install -y libyaml libyaml-devel readline readline-devel
</code>
</pre>

### [Markdown.pl](http://daringfireball.net/projects/markdown/)

<pre>
<code>
Markdown.pl ~/README.md | w3m -T text/html
</code>
</pre>

<pre>
<code>
function md2w3m { Markdown.pl $1 | w3m -T text/html }
</code>
</pre>

## [nkf Network Kanji Filter](http://en.sourceforge.jp/projects/nkf/)
