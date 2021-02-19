

library(here)
library(tidyverse)


raw_transcript <- "GMT20210201-173836_ETS-Demo-f.transcript.vtt"


tr.out <- processZoomTranscript(fname=here("data",raw_transcript),
                                recordingStartDateTime="2021-02-01 10:00:00"
                                )


dd <- textConversationAnalysis(inputData=tr.out, inputType="transcript", sentiment=FALSE)

speaker_level <- dd[2] %>% as_tibble()

