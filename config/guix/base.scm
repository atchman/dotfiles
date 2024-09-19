;; base config with ssh 
(use-modules (gnu) 
	     ;;(guix modules)
	     ;;(nongnu packages linux)
	     ;;(nongnu system linux-initrd)
	     )
(use-service-modules networking ssh)
(use-package-modules bootloaders ssh)

(define
  ;;%system
  (operating-system
   ;;(kernel linux)
   (host-name "guix")
   (timezone "Etc/UTC")
   (locale "en_US.UTF-8")
   (keyboard-layout (keyboard-layout "de"))
   (bootloader (bootloader-configuration
                ;; (bootloader grub-bootloader) ;; for grub
		(bootloader grub-efi-bootloader)
                (targets '("/dev/sda15"))
                (terminal-outputs '(console))))
   (file-systems (append
		  (list (file-system
			  ;;(device (uuid "e9aab13f-e815-4376-abf7-b3191c57a2b9"))
			  (device "/dev/sda1")
			  (mount-point "/")
                          (type "ext4"))
		        (file-system
			  (device (uuid "17F6-1EA6" 'fat))
			  (mount-point "/boot/efi")
			  (type "vfat")))
                        %base-file-systems))
;;   (users (cons (user-account
;;		  (name "guix")
;;		  (group "guix")
;;		  (supplementary-groups '("adm" "dialout" "cdrom"
;;					  "floppy" "sudo" "audio"
;;					  "dip" "video" "plugdev"
;;					  "netdev" "lxd")))
;;		%base-user-accounts))

   (packages (append (list openssh-sans-x)
		     %base-packages))

   (services
    (append (list 
	      ;;(service dhcp-client-service-type)
	      (static-networking-service-type
		(list (static-networking
			(addresses
			  (list (network-address
				  (device "eth0")
				  (value "10.0.0.6/24"))))
			(routes
			  (list (network-route
				  (destination "default")
				  (gateway "10.0.0.1"))))
			(name-servers '("168.63.129.16")))))
              (service openssh-service-type
                       (openssh-configuration
			(openssh openssh-sans-x)
                        (permit-root-login #f)
			(authorized-keys
			 ;;`(("root" ,(local-file "azure_guix.pem")))
			 )))
            %base-services)))))

