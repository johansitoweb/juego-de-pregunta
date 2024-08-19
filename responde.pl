#!/usr/bin/perl
use strict;
use warnings;

my %questions = (
    "¿Cuál es la capital de Francia?" => "París",
    "¿Cuántos continentes hay?" => "7",
    "¿Quién escribió 'Cien años de soledad'?" => "Gabriel García Márquez"
);

my $score = 0;

foreach my $question (keys %questions) {
    print "$question\n";
    my $answer = <STDIN>;
    chomp($answer);
    if (lc($answer) eq lc($questions{$question})) {
        $score++;
        print "¡Correcto!\n";
    } else {
        print "Incorrecto. La respuesta correcta es: $questions{$question}\n";
    }
}

print "Tu puntaje final es: $score\n";
