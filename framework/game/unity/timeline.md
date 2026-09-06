# Timeline

# Concepts

- `PlayableDirector`: loads a timeline asset (`TimelineAsset`) and controls the
  playback of the playable objects in the asset
  - Namespace: `UnityEngine.Playables`
  - `PlayableDirector.Play(this)`
- `TimelineAsset`: timeline asset
- **Tracks**: assets controlled by a timeline sequence are displayed as tracks;
  each track can be bound to a game object
  - **Apply Track Offset**: ?
  - **Pre/Post Extrapolate**: how the track behaves before or after a clip
    - **Hold**
    - **Continue**
- **Clip**: an item on a track
- **Track Group**: a group of tracks

## Signals

A signal is a scriptable asset

- A signal can be invoked using a signal emitter, a marker on a timeline track
- The game object associated with the timeline can have a signal receiver that
  react to signals
  - Other game objects not associated with the track will not receive signal
    invocations

# Extending Timeline

- Tracks can be created using `TrackAsset`
  - `[TrackBindingType(typeof(Light))]`: controls what can be the bound objects
  - `[TrackClipType(typeof(LightControlAsset))]`: controls the asset that can be
    placed on tracks
  - Override `CreateTrackMixer` to create mixers
- A custom clip can be created by subclassing `PlayableAsset`
- `PlayableAsset` can then instantiate subclasses of `PlayableBehaviour`

## `PlayableAsset`

- `CreatePlayable`: called to create playables for this asset

### Time Information

`PlayableAsset` does not have information on where it starts, where it ends, nor
the duration when placed on a timeline. To get these information

```csharp
[TrackBindingType(typeof(Dialog))]
[TrackClipType(typeof(DialogAsset))]
public class DialogTrack : TrackAsset
{
  public override Playable CreateTrackMixer(
    PlayableGraph graph, GameObject go, int inputCount)
  {
    foreach (TimelineClip clip in GetClips())
    {
      var asset = (DialogAsset)clip.asset;
      asset.Lifetime = (float)clip.duration;
    }

    return base.CreateTrackMixer(graph, go, inputCount);
  }
}

```

## `TrackAsset`

- `CreateTrackMixer`: create a playable that mixes all the clips on the track
  - Called before clips create their own playables

# Operations

Dragging a clip into another clip would create a transition/mixers

# Resources

- [Extending Timeline: A Practical Guide](https://blogs.unity3d.com/2018/09/05/extending-timeline-a-practical-guide/)
