<h2>whichShell</h2>
When running a script, the script might need to know whether it was run using zsh, bash, etc.
There are several ways to <i>try</i> to determine this, but across Windows (cygwin), Apple, and the 
many flavors of unix, different things work.<br>
<br>
This is a set of little scripts that print out various indicators of which shell script language
is running the script. For example, Apple uses the zsh terminal, but when a script
is used, it appears to run a (very old) version of bash. <br>
<br>
<ol>
  <li><a href="https://github.com/rg3h/whichShell/raw/main/whichShell.zip">Click here</a> to download a zip file with several scripts</li>
  <li>unzip and cd into the whichShell/scripts/ directory</li>
  <li>chmod u+x the scripts</li>
  <li>try running them with different sh languages:
    <br><br>
    <table><tr><td>
    <pre>
           ./whichScript.sh
      <b>bash</b> ./whichscript.sh
      <b>zsh</b>  ./whichScript.sh
    </pre>
      </td></tr></table>
  </li>
</ol>
<br>
