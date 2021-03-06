use 5.006;
use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'          => 'Cache::FastMmap',
    'VERSION_FROM'  => 'lib/Cache/FastMmap.pm',
    'ABSTRACT_FROM' => 'lib/Cache/FastMmap.pm',
    'AUTHOR'        => 'Rob Mueller <cpan@robm.fastmail.fm>',
    'LICENSE'       => 'perl',
    'PREREQ_PM'     => {
      'Storable' => 0,
    },
    'LIBS'          => [''],
    'INC'           => '-I.',
    'OBJECT'        => 'FastMmap.o mmap_cache.o ' . ($^O eq 'MSWin32' ? 'win32.o' : 'unix.o'),
    'META_MERGE'    => {
        'resources' => {
            'bugtracker' => 'https://github.com/robmueller/cache-fastmmap/issues',
            'repository' => 'https://github.com/robmueller/cache-fastmmap',
        },
    },
#	    'OPTIMIZE' => '-g -DDEBUG -ansi -pedantic',
);

