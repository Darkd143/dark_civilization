# Parameters:
# - index (int): The index of the feature
# - feature_name (string): The Name of the feature

data modify storage dialog_temp body append value { \
      "type": "minecraft:plain_message", \
      "contents": { \
        "text": "$(index). $(feature)", \
        "color": "white" \
      } \
    }