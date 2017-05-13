#!/usr/bin/env perl6
use v6;
use CPAN::Uploader::Tiny;

sub MAIN($tarball, Str :$config is copy) {
    $config ||= "%*ENV<HOME>/.pause";
    my $cpan = CPAN::Uploader::Tiny.new-from-config($config);
    $cpan.upload($tarball);
}
