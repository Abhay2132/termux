cp sh/* ~/../usr/bin -v

for sh in `ls sh`
do
	chmod +x ~/../usr/bin/$sh
	echo "chmod +x ~/../usr/bin/${sh}"
done

pkg update -y
pkg upgrade -y

pkg autoremove -y

pkg install -y python2 python3 python vim nodejs git termux-services busybox
npm i -g nodemon prettier

