{-# LANGUAGE RecordWildCards #-}

module Main where

import Terminal.Game

import Lib

--------------------------------------------------------------------------------
-- Setup

main :: IO ()
main = do
  g <- newGame
  playGame g

newGame :: IO (Game State)
newGame = return $
  Game{
     gScreenWidth   = 80
    ,gScreenHeight  = 24
    ,gFPS           = 30
    ,gLogicFunction = update
    ,gDrawFunction  = draw
    ,gQuitFunction  = quit
    ,gInitState     = s
    }
  where
    s = State {
       sQuit = False
      ,sBallX = 40
      ,sBallY = 12
      ,sBallVX = 2
      ,sBallVY = 1
      }

data State = State {
   sQuit :: Bool
  ,sBallX :: Column
  ,sBallY :: Row
  ,sBallVX :: Integer
  ,sBallVY :: Integer
  }

--------------------------------------------------------------------------------
-- Logic

quit s = sQuit s

update s ev =
  case ev of
    KeyPress 'q' -> s{sQuit = True}
    _            -> ballMove s

xmin = 2
xmax = 79
ymin = 2
ymax = 23

ballMove s@State{..} =
  s{sBallX=bx''
   ,sBallY=by''
   ,sBallVX=bvx
   ,sBallVY=bvy
   }
  where
    bx' = sBallX + sBallVX
    by' = sBallY + sBallVY
    (bx'', bvx) | bx' > xmax = (bx' - 1, (-sBallVX))
                 | bx' < xmin = (bx' + 1, (-sBallVX))
                 | otherwise  = (bx'    , sBallVX)
    (by'', bvy) | by' > ymax = (by' - 1, (-sBallVY))
                 | by' < ymin = (by' + 1, (-sBallVY))
                 | otherwise  = (by'    , sBallVY)

--------------------------------------------------------------------------------
-- Drawing

draw s@State{..} =
  walls s &
  (sBallY,sBallX) % ball s

ball s = color White Vivid $ cell 'o'

walls _ =
  color Blue Dull $
  stringPlane $ unlines [
   "********************************************************************************"
  ,"*                                                                              *"
  ,"*                                                                              *"
  ,"*                                                                              *"
  ,"*                                                                              *"
  ,"*                                                                              *"
  ,"*                                                                              *"
  ,"*                                                                              *"
  ,"*                                                                              *"
  ,"*                                                                              *"
  ,"*                                                                              *"
  ,"*                                                                              *"
  ,"*                                                                              *"
  ,"*                                                                              *"
  ,"*                                                                              *"
  ,"*                                                                              *"
  ,"*                                                                              *"
  ,"*                                                                              *"
  ,"*                                                                              *"
  ,"*                                                                              *"
  ,"*                                                                              *"
  ,"*                                                                              *"
  ,"*                                                                              *"
  ,"********************************************************************************"
  ]
