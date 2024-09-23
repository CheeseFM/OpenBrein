#kladversie 

📅 Aangemaakt: 19-09-2024

---
# Probleem
Eclipse crasht tijdens omgeving aanvragen voor Visual Paradigm
# Logs
## Open in Visual Paradigm via console
``` Bash
cheese@surlap:~/eclipse/java-2024-09/eclipse$ ./eclipse 
WARNING: Using incubator modules: jdk.incubator.vector
sep 19, 2024 11:21:04 P.M. org.apache.aries.spifly.BaseActivator log
INFO: Registered provider ch.qos.logback.classic.spi.LogbackServiceProvider of service org.slf4j.spi.SLF4JServiceProvider in bundle ch.qos.logback.classic
23:21:04.859 [Start Level: Equinox Container: 2f1e708a-ba2a-4468-aa09-27daf5ccc9a9] DEBUG org.eclipse.jgit.internal.util.ShutdownHook -- register org.eclipse.jgit.util.FS$FileStoreAttributes$$Lambda/0x00007f93d01c0608@cb83667 with shutdown hook
23:21:04.859 [Start Level: Equinox Container: 2f1e708a-ba2a-4468-aa09-27daf5ccc9a9] DEBUG org.eclipse.jgit.internal.util.ShutdownHook -- register org.eclipse.jgit.util.FS$FileStoreAttributes$$Lambda/0x00007f93d01c0608@cb83667 with shutdown hook
23:21:05.543 [main] DEBUG org.eclipse.m2e.core.internal.project.registry.ProjectRegistryRefreshJob -- Queued refresh request: [/test/pom.xml]
23:21:05.543 [main] DEBUG org.eclipse.m2e.core.internal.project.registry.ProjectRegistryRefreshJob -- Queued refresh request: [/test/pom.xml]

(Eclipse:6658): Gdk-CRITICAL **: 23:21:22.328: gdk_x11_window_get_xid: assertion 'GDK_IS_X11_WINDOW (window)' failed
#
# A fatal error has been detected by the Java Runtime Environment:
#
#  SIGSEGV (0xb) at pc=0x00007f941bd0e999, pid=6658, tid=6659
#
# JRE version: OpenJDK Runtime Environment (Red_Hat-21.0.4.0.7-2) (21.0.4+7) (build 21.0.4+7)
# Java VM: OpenJDK 64-Bit Server VM (Red_Hat-21.0.4.0.7-2) (21.0.4+7, mixed mode, sharing, tiered, compressed oops, compressed class ptrs, g1 gc, linux-amd64)
# Problematic frame:
# C  [libX11.so.6+0x22999]  XChangeProperty+0x49
#
# Core dump will be written. Default location: Core dumps may be processed with "/usr/lib/systemd/systemd-coredump %P %u %g %s %t %c %h" (or dumping to /home/cheese/eclipse/java-2024-09/eclipse/core.6658)
#
# An error report file with more information is saved as:
# /home/cheese/eclipse/java-2024-09/eclipse/hs_err_pid6658.log
[18,706s][warning][os] Loading hsdis library failed
#
# If you would like to submit a bug report, please visit:
#   https://bugzilla.redhat.com/enter_bug.cgi?product=Fedora&component=java-21-openjdk&version=39
# The crash happened outside the Java Virtual Machine in native code.
# See problematic frame for where to report the bug.

```

-> Xorg probleem tijdens vertaling naar wayland
- Te fixen door: 
	- Sessie naar xorg over te schakelen in GDM 
	- De applicatie te draaien met omgevingsvariabele `GDK_BACKEND=x11`

# Fix met omgevingsvariabele
1. `cd ~/.local/share/applications`
2. `nano epp.package.java.desktop`
3. Voeg `env GDK_BACKEND=x11` toe aan de 'Exec=' lijn. (bv: `Exec=env GDK_BACKEND=x11 /home/cheese/eclipse/java-2024-09/eclipse/eclipse`)
4. Meld af van de sessie en log opnieuw in (.desktop bestand zit in cache en veranderingen worden niet direct doorgevoerd 😭)

---
# Bronnen
- https://github.com/eclipse-platform/eclipse.platform.swt/issues/1108
- https://github.com/UoY-RoboStar/robotool/issues/4