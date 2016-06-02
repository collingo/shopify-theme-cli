PWD:=$(shell pwd)
CNT:=collingo/theme
GEM:=theme
DIR:=/usr/src
# If the first argument is "theme"...
ifeq (theme,$(firstword $(MAKECMDGOALS)))
  # use the rest as arguments for "theme"
  RUN_ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))
  # ...and turn them into do-nothing targets
  $(eval $(RUN_ARGS):;@:)
endif

.PHONY: bash theme

bash:
	docker run -it --rm -v ${PWD}:${DIR} ${CNT} sh

theme:
	docker run -it --rm -v ${PWD}:${DIR} ${CNT} ${GEM} ${RUN_ARGS}
