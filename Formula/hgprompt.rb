class Hgprompt < Formula
   desc "A Mercurial prompt for bash"
   homepage "http://stevelosh.com/projects/hg-prompt/"
   url "https://bitbucket.org/sjl/hg-prompt/get/dc481ce24b60.zip"
   sha256 "bc0d2d5c1e427dcd9b0b50570880834ca7c18e0124dfb6bbad57b07870f76453"

   bottle :unneeded

   depends_on "mercurial"

   def install
      share.install "prompt.py"
      doc.install "README"
   end

   def caveats; <<~EOS
      You should add the following to your .hgrc

      [extensions]
      prompt = #{opt_share}/prompt.py      
   
      To change the actual prompt add the following lines to your .bashrc

      hg_ps1() {
         hg prompt "{ on {branch}}{ at {bookmark}}{status}" 2> /dev/null
      }
      export PS1='\\u at \\h in \\w$(hg_ps1)\\n$ '
   EOS
   end

   test do
      system python #{opt_share}/prompt.py
   end

end

