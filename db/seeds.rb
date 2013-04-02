# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.delete_all

# ...

Book.create(title: 'Final Machine',
  author: 'Amanda Beech',
  description:
    %{...belief in the myth of it all, the myth of creation, the value of creation, as if you were the kinds of genius artists who were gonna save the fucking world. Well, you'd better think again, because that thought is over. That kind of language is just vulgar. The creative spirit of the human mind. What the hell?! The freedom of the creative spirit of culture. Whose church is that? Just values that justify the sham world you are living in. What is the soul that must be saved? What must we defend ourselves against? What is the real threat here?...The promise of immortality, for sure.
This book focuses on Amanda Beech's Final Machine [2013], a video work in three parts which interrogates the force of images in the context of contingency. Collapsing detective-style prose, laconic oracular visioning and dogmatic mantra, the work acts as a treatise on the image, politics and art itself.
A foreword by Robin Mackay and new essays by Reza Negarestani and Bridget Crone interpret and surround this work, extending it to politics, fiction and philosophy, and weaving these reflections through Beech's wider practice.},
  image_url: 'beech-finalmachine.jpg',
  price: 23.99)

# ...

Book.create(title: 'From Decision to Heresy',
  author: 'Francois Laruelle',
  description:
    %{The question 'what is non-philosophy?' must be replaced by the question about what it can and cannot do. To ask what it can do is already to acknowledge that its capacities are not unlimited. This question is partly Spinozist: no-one knows what a body can do. It is partly Kantian: circumscribe philosophy's illusory power, the power of reason or the faculties, and do not extend its sufficiency in the shape of by way of another philosophy. It is also partly Marxist: how much of philosophy can be transformed through practice, how much of it can be withdrawn from its 'ideological' use? And finally, it is also partly Wittgensteinian: how can one limit philosophical language through its proper use?
But these apparent philosophical proximities and family resemblances are only valid up to a point. That point is called the real - determination-in-the-last-instance, unilateral duality, etc. - which is to say, all of non-philosophy in-person. In other words, these kinds of comparisons are meaningless, or at best profoundly misleading, because non-philosophy is 'performative', its capacities being entirely those of an immanent practice rather than a programme.
From Decision to Heresy provides a collection of English translations of the writings of one of the most creative and subversive, yet least well-known French philosophers working today. The book opens with an introduction based upon an in-depth interview with the author that traces the abiding concerns of his prolific output. The eleven newly translated essays that follow, dating from 1985 to the present, range from the origins of 'non-philosophy' to its evolution into what Laruelle now calls 'non-standard philosophy', providing the most comprehensive 'reader' for Laruelle's project to date. Two appendices present a number of Laruelle's experimental texts, which have not previously appeared in English translation; and a transcript of an early intervention and discussion on his 'transvaluation' of Kant's transcendental method.
François Laruelle, Professor Emeritus at the University of Paris X: Nanterre, is the author of more than twenty books, including Biography of the Ordinary Man, Theory of Strangers, Principles of Non-Philosophy, Future Christ, Struggle and Utopia at the End Times of Philosophy, Anti-Badiou, and Non-Standard Philosophy.},
  image_url: 'laruelle-fromdecisiontoheresy.jpg',
  price: 17.99)

# ...

Book.create(title: 'The Number and the Siren',
  author: 'Quentin Meillassoux',
  description:
    %{Who would have thought that a book on Mallarmé's Un Coup de dés, one of the austere peaks of modernist poetics, would be a page-turner? But that is precisely what Quentin Meillassoux's remarkable study turns out to be. I haven't read a critical book with such eagerness to find out what happens next for a very long time. Beautifully produced and translated, this is a book every poetry lover will want to have in his pocket to read on bus, train and plane
- Gabriel Josipovici, Times Literary Supplement.
Meillasoux...has added a crucial dimension nobody ever noticed despite innumerable 'close readings'
- Daniel Birnbaum, ArtForum
Whether or not one accepts Meillassoux's central contention, The Number and the Siren makes for the best overview of Mallarmé's poetics that I know ... To one of the world's strangest and most enigmatic poetic texts he adds a most astounding exegesis. Meillassoux makes us see Mallarmé as a different kind of author than we might have imagined he was - shows us a madness in him that we might not have expected.
- Barry Schwab, HYPERALLERGIC.
A meticulous literary study, a detective story à la Edgar Allan Poe, a treasure-hunt worthy of an adventure novel - such is the register in which can be deciphered the hidden secrets of a poem like no other. Quentin Meillassoux, author of After Finitude, continues his philosophical interrogation of the concepts of chance, contingency, infinity and eternity through a concentrated study of Mallarmé's poem Un Coup de Dés, patiently deciphering its enigmatic meaning on the basis of a dazzlingly simple and lucid insight with regard to that 'unique Number that cannot be another'.
Un Coup de Dés jamais n'abolira le Hasard constitutes perhaps the most radical break in the history of modern poetry: the fractured lines spanning the double page, the typographical play borrowed from the poster form, the multiplication of interpolations disrupting reading. But the intrigue of this poem is still stranger, always resistant to full elucidation. We encounter a shipwreck, and a Master, himself almost submerged, who clasps in his hand the dice that, confronted by the furious waves, he hesitates to throw. The hero expects this throw, if it takes place, to be extraordinarily important: a Number said to be 'unique' and which 'can be no other'.
The decisive point of the investigation proposed by Meillassoux comes with a discovery, unsettling and yet as simple as a child's game. All the dimensions of the Number, understood progressively, articulate between them but one sole condition: that this Number should ultimately be delivered to us by a secret code, hidden in the Coup de dés like a key that finally unlocks every one of its poetic devices. Thus is also unveiled the meaning of that siren, emerging for a lightning-flash amongst the debris of the shipwreck: as the living heart of a drama that is still unfolding.
With this bold new interpretation of Mallarmé's work, The Number and the Siren offers brilliant insights into modernity, poetics, secularism and religion, and opens a new chapter in Meillassoux's philosophy of radical contingency.
The volume contains the entire text of the Coup de dés and three other poems, with new English translations.},
  image_url: 'meillassoux-thenumberandthesiren.jpg',
  price: 16.99)
