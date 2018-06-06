
function chrome(){
	chrome_b=$(ps ax|env grep '/opt/google/chrom[e]'|head -n1|awk '{print $5}'|cut -d '/' -f 4)
	eval "google-$chrome_b $@"
}
function targz(){tar xvf $@ --use-compress-prog=pigz }
function tarxz(){tar xvf $@ --use-compress-prog=pixz }
function tarbzip2(){tar xvf $@ --use-compress-prog=pbzip2 }
