REM Signs the Portable.Licensing assembly with the key file External.snk
REM Copies the output to the release directory

"C:\Program Files (x86)\Microsoft SDKs\Windows\v8.1A\bin\NETFX 4.5.1 Tools\ildasm" Build\merged\Portable.Licensing.dll /out:Build\merged\Portable.Licensing.il
ren Build\merged\Portable.Licensing.dll Portable.Licensing.dll.orig
"C:\Windows\Microsoft.NET\Framework\v4.0.30319\ilasm" Build\merged\Portable.Licensing.il /dll /key=External.snk
mkdir release
copy Build\merged\Portable.Licensing.dll release\Portable.Licensing.dll
