
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
# + csr1 - Segment Record Field
# + csr2 - Segment Record Field
# + csr3 - Segment Record Field
# + csr4 - Segment Record Field
# + csr5 - Segment Record Field
# + csr6 - Segment Record Field
# + csr7 - Segment Record Field
# + csr8 - Segment Record Field
# + csr9 - Segment Record Field
# + csr10 - Segment Record Field
# + csr11 - Segment Record Field
# + csr12 - Segment Record Field
# + csr13 - Segment Record Field
# + csr14 - Segment Record Field
# + csr15 - Segment Record Field
# + csr16 - Segment Record Field
@hl7v2:SegmentDefinition {
    name: "CSR",
    required: false,
    maxReps: 0,
    fields: {
        "csr1": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "csr2": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: EI
        },
        "csr3": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "csr4": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "csr5": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CX
        },
        "csr6": {
            required: true,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "csr7": {
            required: false,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "csr8": {
            required: true,
            length: 1,
            maxReps: -1,
            dataType: XCN
        },
        "csr9": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "csr10": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "csr11": {
            required: false,
            length: 1,
            maxReps: 3,
            dataType: DTM
        },
        "csr12": {
            required: false,
            length: 1,
            maxReps: 3,
            dataType: CWE
        },
        "csr13": {
            required: false,
            length: 1,
            maxReps: 3,
            dataType: CWE
        },
        "csr14": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        },
        "csr15": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: DTM
        },
        "csr16": {
            required: false,
            length: 1,
            maxReps: 1,
            dataType: CWE
        }
    }
}
public type CSR record {
    *hl7v2:Segment;
    string name = CSR_SEGMENT_NAME;
    EI csr1 = {};
    EI csr2 = {};
    CWE csr3 = {};
    CX csr4 = {};
    CX csr5 = {};
    DTM csr6 = "";
    XCN[] csr7 = [{}];
    XCN[] csr8 = [{}];
    DTM csr9 = "";
    CWE csr10 = {};
    DTM csr11 = "";
    CWE csr12 = {};
    CWE csr13 = {};
    CWE csr14 = {};
    DTM csr15 = "";
    CWE csr16 = {};
};

public const CSR_SEGMENT_NAME = "CSR";