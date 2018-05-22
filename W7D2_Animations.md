# UIView Animations

## Basics

Properties that you can animate:
* `alpha`, `color`, `frame`, `transform`
https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/CoreAnimation_guide/AnimatableProperties/AnimatableProperties.html

```swift
UIView.animate {
  someview.
}
```

Properties of the an animation:
* Velocity, duration, easing functions: ease in, ease out, ease in ease out, linear.

## Springs

## UIViewPropertyAnimator

interactive animations

* we can pause and resume these animations.
* we can also scrub the animation.

## Transforms

* Every UIView has a CGAffineTransform Property.
* change the size of a view, location, rotate.


## Auto Layout

* If you are using constraints, then **never** set the frame directly. 

Instead:
* Update a constraint
* Create a new constraint and enable/disable constraints
* transform

* Stack views are animatable.

## Links

wwdc auto layout animation https://developer.apple.com/videos/play/wwdc2017/412/