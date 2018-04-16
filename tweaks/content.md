# Title of presentation

## Subtitle

- <i class="fa fa-user"></i>&nbsp;Christoph Welcz
- <i class="fa fa-calendar" aria-hidden="true"></i>&nbsp;01.01.1900
- <i class="fa fa-twitter" aria-hidden="true"></i>&nbsp;[@ChristophWelcz](https://twitter.com/ChristophWelcz)
- <i class="fa fa-github" aria-hidden="true"></i>&nbsp;[github.com/enolive/some-project](https://github.com/enolive/some-project)

<--->

## Second slide

foo

<-->

### Vertical Slide

bar

<--->

<section tagcloud large>
    <span tagcloud-weight="16">Unit </span>
    <span tagcloud-weight="44">Currying </span>
    <span tagcloud-weight="29">Higher Order Functions </span>
    <span tagcloud-weight="10">Event Sourcing/CQRS </span>
    <span tagcloud-weight="35">Applicatives </span>
    <span tagcloud-weight="13">Monad </span>
    <span tagcloud-weight="30">filter/map/reduce </span>
    <span tagcloud-weight="18">bind </span>
    <span tagcloud-weight="40">side effects </span>
    <span tagcloud-weight="22">purity </span>
    <span tagcloud-weight="39">honest functions </span>
    <span tagcloud-weight="19">Functor </span>
    <span tagcloud-weight="50">Immutability </span>
    <span tagcloud-weight="34">category theory </span>
    <span tagcloud-weight="15">Monoid </span>
    <span tagcloud-weight="29">tuples  </span> 
    <span tagcloud-weight="17">discriminated unions </span>
    <span tagcloud-weight="20">elevated types </span>
    <span tagcloud-weight="33">Typed FP </span>
    <span tagcloud-weight="28">Either </span>
    <span tagcloud-weight="34">Option </span>
    <span tagcloud-weight="14">arrow notation </span>
    <span tagcloud-weight="24">railway oriented programming </span>
    <span tagcloud-weight="26">Lambda </span>
    <span tagcloud-weight="12">Composition </span>
<section>

<--->

<section tagcloud large>
This
should 
change
with
every
reload
</section>

<--->

## Just an image

![funx-logo](resources/DATEV-SCC-Logo.png)

<--->

## Too much content

<!-- .slide: class="too-much-content" -->

- Line 1
- Line 2
- Line 3
- Line 4
- Line 5
- Line 6
- Line 7
- Line 8
- Line 9
- Line 10
- Line 11
- Line 12
- Line 13

<--->

```javascript
let list = [1, 2, 3, 4, 5];
let result = list.map(x => x + 1); // oder eine "addOne" Funktion nehmen
console.log(result)
```

```haskell
greet :: String -> String
greet name = "Hello, " ++ name ++ "!"
```

<--->

```csharp
// expression
public int AddOne(int i) => i + 1;
```

<pre>
<code data-noescape data-trim class="lang-csharp hljs">
Func&lt;int, bool> isLargerThanFive = x => x > 5;
Func&lt;int, bool> isSmallerThenTen = x => x < 10;

<span class="mycodemark-always">Func&lt;int, bool> isBetweenFiveAndTen = x => 
    isLargerThanFive(x) && isSmallerThenTen(x);</span>

isBetweenFiveAndTen(7); // TRUE
</code>
</pre>

<--->

<pre>
<code data-noescape data-trim class="lang-fsharp hljs">
let add1 x = x + 1
let times2 x = x * 2

let add1Times2 x = times2(add1 x) // ok...
<span class="mycodemark-always">
let add1Times2 = add1 >> times2   // ">>": composition operator
</span>
</code>
</pre>

<pre>
<code data-noescape data-trim class="lang-fsharp hljs">
open System
type Person = { FirstName: string; LastName: string }
let p = {FirstName = "Joe"; LastName = "Smith"}
let abbreviate (s: string) = s.[0..1].ToLower()
let abbreviateName p = abbreviate(p.FirstName) + abbreviate(p.LastName)
let appendDomain (s: string) = s + "@company.com"
<span class="mycodemark-always">
let emailFor = abbreviateName >> appendDomain
</span>
p |> emailFor // josm@company.com
</code>
</pre>

<--->

<!-- .slide: class="outline" data-background-image="resources/DATEV-SCC-Logo.png" data-background-size="cover" data-state="dimmed-less"-->

Using background images...


