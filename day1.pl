#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

# perl will automatically close the filehandler when the program exits
open(my $file, 'input_data/day1.txt')
    or die 'Could not open file';
# open(my $file, 'input_data/day1.sample.txt')
#     or die 'Could not open file';    

# read data into arrays
my @leftArr;
my @rightArr;

while(<$file>) {
    my $line = $_;
    chomp($line);

    my ($left,$right) = split(' ', $line);
    push(@leftArr, $left);
    push(@rightArr, $right);
}

# sort each array
@leftArr = sort(@leftArr);
@rightArr = sort(@rightArr);
# print Dumper  \@leftArr;
# print Dumper \@rightArr;

sub partA {
    # find diff of each pair
    my $summedDiffs = 0;
    my $arrLen = scalar(@leftArr);
    for my $i (0..$arrLen-1) {
        $summedDiffs += abs($leftArr[$i] - $rightArr[$i]);
    }

    print("PartA: final summed differences: ", $summedDiffs, "\n");
}

partA();

sub partB {
    # count how many times each number from the left list appears in the right list
    # sum += leftArr[i] * rightOccurrences[leftArr[i]]

    my %rightOccurrencesDict = ();
    for my $r (@rightArr) {
        unless(exists($rightOccurrencesDict{$r})) {
            $rightOccurrencesDict{$r} = 0;
        }

        $rightOccurrencesDict{$r}++;
    }
    
    my $totalSimilarity = 0;
    for my $l (@leftArr) {
        if (exists($rightOccurrencesDict{$l})) {
            $totalSimilarity += $l * $rightOccurrencesDict{$l};
        }
    }

    print("PartB: final total similarity: ", $totalSimilarity, "\n");
}

partB();