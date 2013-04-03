# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.delete_all

# ...

Book.create(title: 'Fanged Noumena',
  author: 'Nick Land',
  teaser: 
    %{<blockquote><p>The magnitude of Nick Land's influence upon contemporary experimental production is yet to be fully comprehended. Whilst Fanged Noumena goes some way to provide an aetiology of Land's philosophical virulence, those seeking a cure for the 'disease of the earth' are advised to look elsewhere ...</p>
<small>Jake Chapman</small></blockquote>},
  description:
    %{<blockquote><p>Land had the most brilliantly seductive and meteoric mind, endlessly imaginative and capable of adopting, inhabiting and discarding any philosophical position. With him - and rightly so - philosophy infected every area of life, and sheer vitality of life reverberated in his thinking.</p>
<p>I see Fanged Noumena as a kind of righteous revenge. Nick was dismissed by professional philosophers because they simply didn't want to think and preferred their turgid academic complacency. I always admired him for his unwavering desire to take thought to its absolute limit and then see how much harder one could push.</p>
<small>Simon Critchley</small>
</blockquote>
<blockquote><p>These extraordinary texts, superheated compounds of severe abstraction and scabrous wit, testify to a uniquely penetrating intelligence, fusing transcendental philosophy, number theory, geophysics, biology, cryptography and occultism into startlingly cohesive but increasingly delirious theory-fictions.</p>
<small>Ray Brassier</small></blockquote>
<blockquote><p>This is theory as cyberpunk fiction: Deleuze-Guattari's concept of capitalism as the virtual unnameable Thing that haunts all previous formations pulp-welded to the timebending of the Terminator films. Land's machinic theory-poetry parallelled the digital intensities of 90s jungle, techno and doomcore, anticipating 'impending human extinction becoming accessible as a dance-floor'.</p>
<small>Mark Fisher (K-Punk)</small></blockquote>
<blockquote><p>In the last half of the twentieth century, academics talked endlessly about the outside, but no-one went there. Land, by exemplary contrast, made experiments in the unknown unavoidable for a philosophy caught in the abstractive howl of post-political cybernetics. Fanged Noumena demonstrates how Land ruined a generation of intellectuals for merely academic philosophy, by opening a speculative singularity where the future used to be.</p>
<small>Iain Hamilton Grant</small></blockquote>
<p>Fanged Noumena brings together the writings of Nick Land for the first time. During the 1990s Land's unique philosophical work, variously described as 'rabid nihilism', 'mad black deleuzianism' and 'cybergothic', developed perhaps the only rigorous and culturally-engaged escape route out of the malaise of 'continental philosophy' - a route which was implacably blocked by the academy. However, Land's work has continued to exert an influence, both through the British 'speculative realist' philosophers who studied with him, and through the many cultural producers - artists, musicians, filmmakers, bloggers - who have been invigorated by his uncompromising and abrasive philosophical vision.</p>
<p>Beginning with Land's early radical rereadings of Heidegger, Nietzsche, Kant and Bataille, the volume then collects together the papers, talks and articles of the mid-90s - long the subject of rumour and vague legend (including some work which has never previously appeared in print) - in which Land developed his futuristic theory-fiction of cybercapitalism gone amok; and ends with his enigmatic later writings in which Ballardian fictions, poetics, cryptography, anthropology, grammatology and the occult are smeared into unrecognisable hybrids.</p>
<p>Fanged Noumena allows a dizzying perspective on the entire trajectory of this provocative and influential thinker's work, and will introduce his unique voice to a new generation of readers.</p>},
  image_url: 'land-fangednoumena.jpg',
  price: 23.99)

# ...

Book.create(title: 'From Decision to Heresy',
  author: 'Francois Laruelle',
  teaser:
    %{<p>The question 'what is non-philosophy?' must be replaced by the question about what it can and cannot do. To ask what it can do is already to acknowledge that its capacities are not unlimited. This question is partly Spinozist: no-one knows what a body can do. It is partly Kantian: circumscribe philosophy's illusory power, the power of reason or the faculties, and do not extend its sufficiency in the shape of by way of another philosophy. It is also partly Marxist: how much of philosophy can be transformed through practice, how much of it can be withdrawn from its 'ideological' use? And finally, it is also partly Wittgensteinian: how can one limit philosophical language through its proper use?</p>},
  description:
    %{<p>But these apparent philosophical proximities and family resemblances are only valid up to a point. That point is called the real - determination-in-the-last-instance, unilateral duality, etc. - which is to say, all of non-philosophy in-person. In other words, these kinds of comparisons are meaningless, or at best profoundly misleading, because non-philosophy is 'performative', its capacities being entirely those of an immanent practice rather than a programme.</p>
<p>From Decision to Heresy provides a collection of English translations of the writings of one of the most creative and subversive, yet least well-known French philosophers working today. The book opens with an introduction based upon an in-depth interview with the author that traces the abiding concerns of his prolific output. The eleven newly translated essays that follow, dating from 1985 to the present, range from the origins of 'non-philosophy' to its evolution into what Laruelle now calls 'non-standard philosophy', providing the most comprehensive 'reader' for Laruelle's project to date. Two appendices present a number of Laruelle's experimental texts, which have not previously appeared in English translation; and a transcript of an early intervention and discussion on his 'transvaluation' of Kant's transcendental method.</p>
<p>François Laruelle, Professor Emeritus at the University of Paris X: Nanterre, is the author of more than twenty books, including Biography of the Ordinary Man, Theory of Strangers, Principles of Non-Philosophy, Future Christ, Struggle and Utopia at the End Times of Philosophy, Anti-Badiou, and Non-Standard Philosophy.</p>},
  image_url: 'laruelle-fromdecisiontoheresy.jpg',
  price: 17.99)

# ...

Book.create(title: 'The Number and the Siren',
  author: 'Quentin Meillassoux',
  teaser: %{<blockquote><p>Who would have thought that a book on Mallarmé's Un Coup de dés, one of the austere peaks of modernist poetics, would be a page-turner? But that is precisely what Quentin Meillassoux's remarkable study turns out to be. I haven't read a critical book with such eagerness to find out what happens next for a very long time. Beautifully produced and translated, this is a book every poetry lover will want to have in his pocket to read on bus, train and plane.</p>
<small>Gabriel Josipovici, Times Literary Supplement</small></blockquote>},
  description:
    %{<blockquote><p>Meillasoux...has added a crucial dimension nobody ever noticed despite innumerable 'close readings'</p>
<small>Daniel Birnbaum, ArtForum</small></blockquote>
<blockquote><p>Whether or not one accepts Meillassoux's central contention, The Number and the Siren makes for the best overview of Mallarmé's poetics that I know ... To one of the world's strangest and most enigmatic poetic texts he adds a most astounding exegesis. Meillassoux makes us see Mallarmé as a different kind of author than we might have imagined he was - shows us a madness in him that we might not have expected.</p>
<small>Barry Schwab, HYPERALLERGIC</small></blockquote>
<p>A meticulous literary study, a detective story à la Edgar Allan Poe, a treasure-hunt worthy of an adventure novel - such is the register in which can be deciphered the hidden secrets of a poem like no other. Quentin Meillassoux, author of After Finitude, continues his philosophical interrogation of the concepts of chance, contingency, infinity and eternity through a concentrated study of Mallarmé's poem Un Coup de Dés, patiently deciphering its enigmatic meaning on the basis of a dazzlingly simple and lucid insight with regard to that 'unique Number that cannot be another'.</p>
<p>Un Coup de Dés jamais n'abolira le Hasard constitutes perhaps the most radical break in the history of modern poetry: the fractured lines spanning the double page, the typographical play borrowed from the poster form, the multiplication of interpolations disrupting reading. But the intrigue of this poem is still stranger, always resistant to full elucidation. We encounter a shipwreck, and a Master, himself almost submerged, who clasps in his hand the dice that, confronted by the furious waves, he hesitates to throw. The hero expects this throw, if it takes place, to be extraordinarily important: a Number said to be 'unique' and which 'can be no other'.</p>
<p>The decisive point of the investigation proposed by Meillassoux comes with a discovery, unsettling and yet as simple as a child's game. All the dimensions of the Number, understood progressively, articulate between them but one sole condition: that this Number should ultimately be delivered to us by a secret code, hidden in the Coup de dés like a key that finally unlocks every one of its poetic devices. Thus is also unveiled the meaning of that siren, emerging for a lightning-flash amongst the debris of the shipwreck: as the living heart of a drama that is still unfolding.</p>
<p>With this bold new interpretation of Mallarmé's work, The Number and the Siren offers brilliant insights into modernity, poetics, secularism and religion, and opens a new chapter in Meillassoux's philosophy of radical contingency.</p>
<p>The volume contains the entire text of the Coup de dés and three other poems, with new English translations.</p>},
  image_url: 'meillassoux-thenumberandthesiren.jpg',
  price: 16.99)
