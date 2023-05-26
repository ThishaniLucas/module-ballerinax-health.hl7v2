
// Copyright (c) 2023, WSO2 LLC. (http://www.wso2.com).

// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at

// http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerinax/health.hl7v2;

# The ACC segment contains patient information relative to an accident in which the patient has been involved.
#
# + name - Segment Name
# + inv1 - Segment Record Field
# + inv2 - Segment Record Field
# + inv3 - Segment Record Field
# + inv4 - Segment Record Field
# + inv5 - Segment Record Field
# + inv6 - Segment Record Field
# + inv7 - Segment Record Field
# + inv8 - Segment Record Field
# + inv9 - Segment Record Field
# + inv10 - Segment Record Field
# + inv11 - Segment Record Field
# + inv12 - Segment Record Field
# + inv13 - Segment Record Field
# + inv14 - Segment Record Field
# + inv15 - Segment Record Field
# + inv16 - Segment Record Field
# + inv17 - Segment Record Field
# + inv18 - Segment Record Field
# + inv19 - Segment Record Field
# + inv20 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "INV",
    required: false,
    maxReps: 0,
    fields: {
        "inv1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "inv2": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "inv3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "inv4": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "inv5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "inv6": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "inv7": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "inv8": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "inv9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "inv10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: NM
        },
        "inv11": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "inv12": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "inv13": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TS
        },
        "inv14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: TQ
        },
        "inv15": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: CE
        },
        "inv16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: ST
        },
        "inv17": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "inv18": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CE
        },
        "inv19": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        },
        "inv20": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CQ
        }
    }
}
public type INV record {
    *hl7v2:Segment;
    string name = INV_SEGMENT_NAME;
    CE inv1 = {};
    CE[] inv2 = [{}];
    CE inv3 = {};
    CE inv4 = {};
    CE inv5 = {};
    CE inv6 = {};
    NM inv7 = "";
    NM inv8 = "";
    NM inv9 = "";
    NM inv10 = "";
    CE inv11 = {};
    TS inv12 = {};
    TS inv13 = {};
    TQ inv14 = {};
    CE[] inv15 = [{}];
    ST inv16 = "";
    CE inv17 = {};
    CE inv18 = {};
    CQ inv19 = {};
    CQ inv20 = {};
};

public const INV_SEGMENT_NAME = "INV";