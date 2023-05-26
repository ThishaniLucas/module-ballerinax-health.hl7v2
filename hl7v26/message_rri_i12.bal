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

public const RRI_I12_MESSAGE_TYPE = "RRI_I12";

#  HL7 Message Default Description
#
# + name - Message name
# + msh - Message Record Field
# + sft - Message Record Field
# + uac - Message Record Field
# + msa - Message Record Field
# + rf1 - Message Record Field
# + pid - Message Record Field
# + acc - Message Record Field
# + dg1 - Message Record Field
# + drg - Message Record Field
# + al1 - Message Record Field
# + nte - Message Record Field
# + authorization_contact - Message Record Field
# + provider_contact - Message Record Field
# + procedure - Message Record Field
# + observation - Message Record Field
# + patient_visit - Message Record Field
@hl7v2:MessageDefinition {
    segments: {
        "MSH": {name: "MSH", maxReps: 1, required: false, segmentType: MSH},
        "SFT": {name: "SFT", maxReps: -1, required: false, segmentType: SFT},
        "UAC": {name: "UAC", maxReps: 1, required: false, segmentType: UAC},
        "MSA": {name: "MSA", maxReps: 1, required: false, segmentType: MSA},
        "RF1": {name: "RF1", maxReps: 1, required: false, segmentType: RF1},
        "PID": {name: "PID", maxReps: 1, required: false, segmentType: PID},
        "ACC": {name: "ACC", maxReps: 1, required: false, segmentType: ACC},
        "DG1": {name: "DG1", maxReps: -1, required: false, segmentType: DG1},
        "DRG": {name: "DRG", maxReps: -1, required: false, segmentType: DRG},
        "AL1": {name: "AL1", maxReps: -1, required: false, segmentType: AL1},
        "NTE": {name: "NTE", maxReps: -1, required: false, segmentType: NTE}
    }
}
public type RRI_I12 record {
    *hl7v2:Message;
    string name = RRI_I12_MESSAGE_TYPE;
    MSH msh?;
    SFT[] sft = [];
    UAC uac?;
    MSA msa?;
    RF1 rf1?;
    PID pid?;
    ACC acc?;
    DG1[] dg1 = [];
    DRG[] drg = [];
    AL1[] al1 = [];
    NTE[] nte = [];
    AUTHORIZATION_CONTACT[] authorization_contact = [{}];
    PROVIDER_CONTACT[] provider_contact = [{}];
    PROCEDURE[] procedure = [{}];
    OBSERVATION[] observation = [{}];
    PATIENT_VISIT[] patient_visit = [{}];
};