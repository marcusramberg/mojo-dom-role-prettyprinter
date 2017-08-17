use Mojo::Base -strict;

use Test::More;

use Mojo::DOM;

my $dom=Mojo::DOM->with_roles('+PrettyPrinter')->new('<div><p>first para</p><p>second para</p>');
is($dom->as_pretty_xml,<<'EOT');
<div>
  <p>first para</p>
  <p>second para</p>
</div>
EOT


done_testing;
