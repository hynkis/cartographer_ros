-- Copyright 2016 The Cartographer Authors
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

include "my_robot_hokuyo.lua"

TRAJECTORY_BUILDER.pure_localization_trimmer = {
    max_submaps_to_keep = 2,
  }
  POSE_GRAPH.optimize_every_n_nodes = 2

-- TRAJECTORY_BUILDER.pure_localization = true
-- POSE_GRAPH.optimize_every_n_nodes = 2 --2

-- fast localization
MAP_BUILDER.num_background_threads = 2 -- 4, 6
POSE_GRAPH.constraint_builder.sampling_ratio = 0.2 * POSE_GRAPH.constraint_builder.sampling_ratio -- 0.4/0.2/0.1
POSE_GRAPH.global_sampling_ratio = 0.2 * POSE_GRAPH.global_sampling_ratio -- 0.4/0.2/0.1
POSE_GRAPH.max_num_final_iterations = 2 -- 2

return options
