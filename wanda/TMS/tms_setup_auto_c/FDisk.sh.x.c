#if 0
	shc Version 3.8.9b, Generic Script Compiler
	Copyright (c) 1994-2015 Francisco Rosales <frosal@fi.upm.es>

	shc -v -r -T -f tms_setup_auto_c/FDisk.sh 
#endif

static  char data [] = 
#define      msg1_z	42
#define      msg1	((&data[10]))
	"\211\205\261\214\011\002\107\202\233\367\031\230\145\017\021\001"
	"\024\321\077\355\210\254\330\124\266\146\211\154\364\146\226\303"
	"\373\077\300\275\272\200\276\316\311\011\272\036\035\241\366\216"
	"\351\044\020\250\361\131\273\153\275"
#define      date_z	1
#define      date	((&data[57]))
	"\027"
#define      inlo_z	3
#define      inlo	((&data[58]))
	"\347\361\144"
#define      tst2_z	19
#define      tst2	((&data[62]))
	"\117\367\056\057\263\120\327\321\015\362\375\267\074\210\217\174"
	"\241\173\063\355\102\113"
#define      xecc_z	15
#define      xecc	((&data[84]))
	"\343\140\207\050\132\077\357\140\140\165\336\352\213\051\052\123"
#define      chk2_z	19
#define      chk2	((&data[102]))
	"\161\316\227\113\122\251\237\016\237\125\120\275\153\360\313\245"
	"\300\351\120\112\145\026\270\120"
#define      shll_z	10
#define      shll	((&data[125]))
	"\215\153\237\216\112\312\143\320\013\250\151\050"
#define      rlax_z	1
#define      rlax	((&data[135]))
	"\066"
#define      pswd_z	256
#define      pswd	((&data[146]))
	"\200\041\266\324\230\005\027\343\150\161\070\112\113\311\342\130"
	"\171\316\370\070\135\211\206\061\262\264\062\036\236\324\325\147"
	"\275\357\147\247\053\335\130\257\123\221\372\236\132\335\367\324"
	"\254\357\015\012\171\223\073\053\107\155\112\346\101\037\116\376"
	"\017\265\246\073\222\376\353\345\217\346\204\352\304\173\277\160"
	"\152\314\172\344\137\265\020\247\042\132\216\144\171\334\143\211"
	"\222\011\304\045\007\257\013\227\225\217\201\131\012\100\312\165"
	"\014\104\131\154\371\151\024\034\304\243\200\076\177\343\307\022"
	"\355\214\067\365\073\102\214\321\321\016\053\334\116\365\121\133"
	"\072\253\310\063\025\334\117\331\177\320\027\377\264\337\022\242"
	"\153\111\227\247\214\044\171\136\062\244\072\201\232\213\334\324"
	"\067\245\010\114\202\130\046\002\051\075\001\335\035\024\177\210"
	"\135\027\060\352\073\251\110\155\116\202\356\351\016\313\275\105"
	"\160\306\221\362\036\267\364\107\365\366\045\023\012\245\233\150"
	"\274\314\122\370\165\232\146\304\035\124\255\053\040\153\160\221"
	"\062\002\203\120\272\170\230\260\157\276\303\172\143\137\342\040"
	"\053\065\031\241\320\177\146\355\324\024\042\114\126\350\341\307"
	"\267\171\200\010\254\060\112\071\233\370\204\041\365\256\357\165"
	"\317\245\112\147\253\141\113\024\323\156\140\052\126\101\361\015"
	"\272\161\025\146\241\137\240\075\130\045\137\115\323\116"
#define      opts_z	1
#define      opts	((&data[454]))
	"\324"
#define      lsto_z	1
#define      lsto	((&data[455]))
	"\334"
#define      tst1_z	22
#define      tst1	((&data[458]))
	"\103\304\037\230\173\354\167\372\344\262\017\244\040\026\343\007"
	"\211\041\012\166\215\304\163\174\023\155\032\124"
#define      chk1_z	22
#define      chk1	((&data[484]))
	"\227\267\352\350\145\172\104\122\142\162\215\106\331\064\324\044"
	"\336\124\077\337\047\176"
#define      text_z	1040
#define      text	((&data[568]))
	"\163\234\026\260\365\073\020\102\016\136\006\261\122\024\274\361"
	"\203\022\244\307\326\270\064\360\014\223\030\033\145\125\221\330"
	"\362\250\211\347\343\231\052\362\367\061\244\112\105\140\073\310"
	"\162\340\220\110\230\304\071\245\130\122\301\275\247\123\025\262"
	"\347\143\150\245\240\011\163\257\325\247\203\023\347\131\251\375"
	"\364\323\174\256\331\156\332\360\333\137\306\340\255\126\062\265"
	"\133\177\056\154\126\234\256\366\022\327\274\175\364\253\144\317"
	"\233\010\111\354\041\134\220\013\076\103\152\265\361\305\360\236"
	"\221\141\213\133\146\242\065\241\060\214\013\335\256\244\030\066"
	"\320\025\222\277\224\004\124\357\373\050\241\130\130\035\264\017"
	"\337\012\235\073\062\262\316\075\165\275\262\177\313\237\332\031"
	"\005\231\305\300\267\022\246\310\116\356\031\106\034\312\260\144"
	"\100\236\065\276\212\301\327\007\172\145\230\106\174\035\064\273"
	"\031\202\146\163\040\111\377\151\231\276\262\332\040\365\362\037"
	"\070\251\120\116\032\300\350\256\026\045\002\205\203\070\366\220"
	"\103\375\342\036\205\200\204\277\232\025\304\207\313\033\324\247"
	"\341\326\241\337\224\316\231\033\004\274\310\025\216\013\010\347"
	"\064\120\176\220\112\121\135\300\231\277\377\154\002\207\302\012"
	"\053\276\246\341\232\040\031\230\335\267\045\207\355\122\325\132"
	"\026\046\002\040\075\227\147\326\363\207\250\115\157\123\310\324"
	"\234\100\313\126\222\061\017\027\235\200\125\164\271\055\323\144"
	"\374\174\075\261\000\077\033\103\164\235\345\221\313\274\052\073"
	"\156\115\237\372\302\017\005\171\200\147\261\303\333\026\012\032"
	"\212\044\201\215\357\200\123\272\153\100\144\261\265\051\127\075"
	"\006\114\351\212\362\141\356\253\211\331\371\012\131\002\016\363"
	"\125\172\362\163\364\214\326\020\362\302\331\076\227\122\354\332"
	"\301\111\061\272\015\231\313\052\351\061\145\144\167\243\200\143"
	"\307\137\070\353\120\021\227\334\342\227\301\072\270\363\331\007"
	"\112\150\074\263\366\362\045\326\033\161\037\004\055\340\125\331"
	"\273\200\236\330\345\366\053\271\244\375\343\061\173\354\174\257"
	"\327\073\313\013\271\172\116\355\343\305\340\035\107\003\300\133"
	"\325\221\154\120\235\012\232\334\210\074\224\007\370\336\332\310"
	"\222\326\265\215\101\207\276\204\217\060\267\031\305\104\005\052"
	"\241\274\152\201\040\034\146\254\024\212\105\376\246\271\073\111"
	"\364\307\054\153\023\162\014\113\127\340\364\052\004\140\154\310"
	"\221\073\371\357\310\023\373\143\212\274\317\356\352\252\242\114"
	"\151\362\115\261\260\334\241\251\066\144\167\304\155\143\023\137"
	"\302\031\355\203\052\025\343\231\225\000\022\244\042\160\325\215"
	"\315\232\047\037\026\116\224\217\275\371\336\136\101\363\342\356"
	"\257\214\363\135\164\355\357\260\317\357\251\075\330\046\024\204"
	"\011\340\343\012\072\143\244\357\264\107\214\317\363\276\266\170"
	"\321\161\132\064\132\167\156\156\256\154\100\201\277\045\020\226"
	"\023\244\047\267\302\044\004\305\224\262\362\010\272\066\142\023"
	"\271\162\203\027\147\111\315\022\075\370\164\314\002\131\224\015"
	"\035\154\321\217\032\363\214\137\267\152\055\043\320\366\361\113"
	"\253\345\020\335\320\122\255\223\357\055\172\343\324\170\141\265"
	"\122\356\232\036\177\047\221\167\060\214\214\352\344\045\007\275"
	"\306\331\034\201\341\257\251\357\313\072\140\263\107\012\247\133"
	"\142\013\205\315\061\046\332\311\065\337\075\060\322\337\247\022"
	"\046\074\343\104\372\376\327\266\300\210\114\272\311\137\122\310"
	"\144\276\032\166\123\344\375\032\166\171\172\173\262\024\235\011"
	"\057\370\032\216\024\007\027\241\230\270\333\026\325\267\346\040"
	"\061\141\315\114\315\230\360\366\330\156\024\225\264\340\056\004"
	"\107\213\326\240\105\011\261\310\060\013\133\241\304\120\233\316"
	"\321\343\161\143\347\024\044\021\044\012\263\376\265\077\074\372"
	"\255\307\112\207\143\036\257\032\227\152\122\166\217\173\247\314"
	"\213\153\122\374\226\272\301\210\022\174\247\304\155\345\336\137"
	"\256\341\111\122\203\051\250\334\272\065\245\226\172\165\271\022"
	"\110\011\206\374\025\314\156\116\020\005\047\323\033\142\354\116"
	"\207\035\151\115\260\265\166\165\331\273\164\001\066\256\351\231"
	"\111\017\303\301\343\302\241\107\041\070\061\140\204\316\166\164"
	"\270\022\370\107\247\241\242\305\240\154\376\000\061\040\231\121"
	"\114\015\106\326\145\034\054\225\242\177\033\272\323\113\024\011"
	"\217\041\202\013\233\075\251\251\137\154\160\124\023\063\221\370"
	"\354\006\047\367\230\130\015\363\066\055\301\005\102\150\315\032"
	"\223\070\012\160\241\156\031\302\040\277\063\201\047\101\166\374"
	"\063\345\111\146\136\212\235\026\363\370\265\027\146\202\155\114"
	"\035\360\137\071\132\146\103\317\025\200\042\245\036\324\051\062"
	"\004\175\354\323\364\256\256\203\145\245\030\376\246\022\226\232"
	"\373\037\201\337\271\254\321\261\335\165\373\043\325\067\354\110"
	"\027\174\221\260\100\312\125\231\034\026\126\304\151\355\136\144"
	"\015\340\103\306\215\025\167\152\212\163\215\140\252\172\250\302"
	"\366\072\162\066\005\307\317\042\335\046\346\107\023\105\253\040"
	"\045\357\347\262\004\137\035\217\322\253\357\174\045\230\076\033"
	"\322\260\122\327\170\042\372\126\110\340\235\134\045\111\175\113"
	"\070\144\375\075\303\033\315\226\306\274\022\354\125\121\007\050"
	"\002\132\000\172\174\372"
#define      msg2_z	19
#define      msg2	((&data[1731]))
	"\156\041\000\036\361\014\310\001\165\251\065\053\042\070\362\045"
	"\263\034\371\010\327\071\267\236\113\360"/* End of data[] */;
#define      hide_z	4096
#define DEBUGEXEC	0	/* Define as 1 to debug execvp calls */
#define TRACEABLE	1	/* Define as 1 to enable ptrace the executable */

/* rtc.c */

#include <sys/stat.h>
#include <sys/types.h>

#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <unistd.h>

/* 'Alleged RC4' */

static unsigned char stte[256], indx, jndx, kndx;

/*
 * Reset arc4 stte. 
 */
void stte_0(void)
{
	indx = jndx = kndx = 0;
	do {
		stte[indx] = indx;
	} while (++indx);
}

/*
 * Set key. Can be used more than once. 
 */
void key(void * str, int len)
{
	unsigned char tmp, * ptr = (unsigned char *)str;
	while (len > 0) {
		do {
			tmp = stte[indx];
			kndx += tmp;
			kndx += ptr[(int)indx % len];
			stte[indx] = stte[kndx];
			stte[kndx] = tmp;
		} while (++indx);
		ptr += 256;
		len -= 256;
	}
}

/*
 * Crypt data. 
 */
void arc4(void * str, int len)
{
	unsigned char tmp, * ptr = (unsigned char *)str;
	while (len > 0) {
		indx++;
		tmp = stte[indx];
		jndx += tmp;
		stte[indx] = stte[jndx];
		stte[jndx] = tmp;
		tmp += stte[indx];
		*ptr ^= stte[tmp];
		ptr++;
		len--;
	}
}

/* End of ARC4 */

/*
 * Key with file invariants. 
 */
int key_with_file(char * file)
{
	struct stat statf[1];
	struct stat control[1];

	if (stat(file, statf) < 0)
		return -1;

	/* Turn on stable fields */
	memset(control, 0, sizeof(control));
	control->st_ino = statf->st_ino;
	control->st_dev = statf->st_dev;
	control->st_rdev = statf->st_rdev;
	control->st_uid = statf->st_uid;
	control->st_gid = statf->st_gid;
	control->st_size = statf->st_size;
	control->st_mtime = statf->st_mtime;
	control->st_ctime = statf->st_ctime;
	key(control, sizeof(control));
	return 0;
}

#if DEBUGEXEC
void debugexec(char * sh11, int argc, char ** argv)
{
	int i;
	fprintf(stderr, "shll=%s\n", sh11 ? sh11 : "<null>");
	fprintf(stderr, "argc=%d\n", argc);
	if (!argv) {
		fprintf(stderr, "argv=<null>\n");
	} else { 
		for (i = 0; i <= argc ; i++)
			fprintf(stderr, "argv[%d]=%.60s\n", i, argv[i] ? argv[i] : "<null>");
	}
}
#endif /* DEBUGEXEC */

void rmarg(char ** argv, char * arg)
{
	for (; argv && *argv && *argv != arg; argv++);
	for (; argv && *argv; argv++)
		*argv = argv[1];
}

int chkenv(int argc)
{
	char buff[512];
	unsigned long mask, m;
	int l, a, c;
	char * string;
	extern char ** environ;

	mask  = (unsigned long)&chkenv;
	mask ^= (unsigned long)getpid() * ~mask;
	sprintf(buff, "x%lx", mask);
	string = getenv(buff);
#if DEBUGEXEC
	fprintf(stderr, "getenv(%s)=%s\n", buff, string ? string : "<null>");
#endif
	l = strlen(buff);
	if (!string) {
		/* 1st */
		sprintf(&buff[l], "=%lu %d", mask, argc);
		putenv(strdup(buff));
		return 0;
	}
	c = sscanf(string, "%lu %d%c", &m, &a, buff);
	if (c == 2 && m == mask) {
		/* 3rd */
		rmarg(environ, &string[-l - 1]);
		return 1 + (argc - a);
	}
	return -1;
}

#if !TRACEABLE

#define _LINUX_SOURCE_COMPAT
#include <sys/ptrace.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <fcntl.h>
#include <signal.h>
#include <stdio.h>
#include <unistd.h>

#if !defined(PTRACE_ATTACH) && defined(PT_ATTACH)
#	define PTRACE_ATTACH	PT_ATTACH
#endif
void untraceable(char * argv0)
{
	char proc[80];
	int pid, mine;

	switch(pid = fork()) {
	case  0:
		pid = getppid();
		/* For problematic SunOS ptrace */
#if defined(__FreeBSD__)
		sprintf(proc, "/proc/%d/mem", (int)pid);
#else
		sprintf(proc, "/proc/%d/as",  (int)pid);
#endif
		close(0);
		mine = !open(proc, O_RDWR|O_EXCL);
		if (!mine && errno != EBUSY)
			mine = !ptrace(PTRACE_ATTACH, pid, 0, 0);
		if (mine) {
			kill(pid, SIGCONT);
		} else {
			perror(argv0);
			kill(pid, SIGKILL);
		}
		_exit(mine);
	case -1:
		break;
	default:
		if (pid == waitpid(pid, 0, 0))
			return;
	}
	perror(argv0);
	_exit(1);
}
#endif /* !TRACEABLE */

char * xsh(int argc, char ** argv)
{
	char * scrpt;
	int ret, i, j;
	char ** varg;
	char * me = argv[0];

	stte_0();
	 key(pswd, pswd_z);
	arc4(msg1, msg1_z);
	arc4(date, date_z);
	if (date[0] && (atoll(date)<time(NULL)))
		return msg1;
	arc4(shll, shll_z);
	arc4(inlo, inlo_z);
	arc4(xecc, xecc_z);
	arc4(lsto, lsto_z);
	arc4(tst1, tst1_z);
	 key(tst1, tst1_z);
	arc4(chk1, chk1_z);
	if ((chk1_z != tst1_z) || memcmp(tst1, chk1, tst1_z))
		return tst1;
	ret = chkenv(argc);
	arc4(msg2, msg2_z);
	if (ret < 0)
		return msg2;
	varg = (char **)calloc(argc + 10, sizeof(char *));
	if (!varg)
		return 0;
	if (ret) {
		arc4(rlax, rlax_z);
		if (!rlax[0] && key_with_file(shll))
			return shll;
		arc4(opts, opts_z);
		arc4(text, text_z);
		arc4(tst2, tst2_z);
		 key(tst2, tst2_z);
		arc4(chk2, chk2_z);
		if ((chk2_z != tst2_z) || memcmp(tst2, chk2, tst2_z))
			return tst2;
		/* Prepend hide_z spaces to script text to hide it. */
		scrpt = malloc(hide_z + text_z);
		if (!scrpt)
			return 0;
		memset(scrpt, (int) ' ', hide_z);
		memcpy(&scrpt[hide_z], text, text_z);
	} else {			/* Reexecute */
		if (*xecc) {
			scrpt = malloc(512);
			if (!scrpt)
				return 0;
			sprintf(scrpt, xecc, me);
		} else {
			scrpt = me;
		}
	}
	j = 0;
	varg[j++] = argv[0];		/* My own name at execution */
	if (ret && *opts)
		varg[j++] = opts;	/* Options on 1st line of code */
	if (*inlo)
		varg[j++] = inlo;	/* Option introducing inline code */
	varg[j++] = scrpt;		/* The script itself */
	if (*lsto)
		varg[j++] = lsto;	/* Option meaning last option */
	i = (ret > 1) ? ret : 0;	/* Args numbering correction */
	while (i < argc)
		varg[j++] = argv[i++];	/* Main run-time arguments */
	varg[j] = 0;			/* NULL terminated array */
#if DEBUGEXEC
	debugexec(shll, j, varg);
#endif
	execvp(shll, varg);
	return shll;
}

int main(int argc, char ** argv)
{
#if DEBUGEXEC
	debugexec("main", argc, argv);
#endif
#if !TRACEABLE
	untraceable(argv[0]);
#endif
	argv[1] = xsh(argc, argv);
	fprintf(stderr, "%s%s%s: %s\n", argv[0],
		errno ? ": " : "",
		errno ? strerror(errno) : "",
		argv[1] ? argv[1] : "<null>"
	);
	return 1;
}
