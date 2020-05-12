sentence(1, "bill likes ice-cream").
sentence(2, "bill is tall").
sentence(3, "jane hits jimmy with the cricket ball").
sentence(4, "john travels to london by train").
sentence(5, "bill takes jane some edam cheese").
sentence(6, "freddy lives at 16 thogmorton street in london").


persona(pam).
persona(tom).
persona(bob).
persona(liz).
persona(ann).
persona(pat).
persona(jim).

hombre(tom).
hombre(bob).
hombre(jim).

mujer(pam).
mujer(ann).
mujer(liz).

parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

padre(X,Y) :-
	parent(X, Y),
    hombre(X).
    
madre(X,Y) :-
    parent(X,Y),
    mujer(X,Y).

abuelos(X,Z) :-
    parent(X,Y),
    parent(Y,Z).

hermanos(Y1,Y2) :-
    parent(X,Y1),
    parent(X,Y2),
    Y1 /= Y2.


perrito(fido).
macho(fido).
macho(alex).
macho(fido).
macho(macario).
macho(marco).

perrita(pancracia).
hembra(ana).
hembra(luisa).
hembra(vere).


hombre(X) :-
    persona(X),
    macho(X).

mujer(X) :-
    persona(X),
    hembra(X).
