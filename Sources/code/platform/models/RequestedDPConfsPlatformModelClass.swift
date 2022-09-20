

import Foundation
public extension PlatformClient {
    /*
         Model: RequestedDPConfs
         Used By: Order
     */

    class RequestedDPConfs: Codable {
        public var excludeDps: [Int]?

        public var isDpAssignedManually: Bool

        public var rdpcId: Int

        public var ewbn: [String: Any]?

        public var awbType: String

        public enum CodingKeys: String, CodingKey {
            case excludeDps = "exclude_dps"

            case isDpAssignedManually = "is_dp_assigned_manually"

            case rdpcId = "rdpc_id"

            case ewbn

            case awbType = "awb_type"
        }

        public init(awbType: String, ewbn: [String: Any]? = nil, excludeDps: [Int]? = nil, isDpAssignedManually: Bool, rdpcId: Int) {
            self.excludeDps = excludeDps

            self.isDpAssignedManually = isDpAssignedManually

            self.rdpcId = rdpcId

            self.ewbn = ewbn

            self.awbType = awbType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                excludeDps = try container.decode([Int].self, forKey: .excludeDps)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isDpAssignedManually = try container.decode(Bool.self, forKey: .isDpAssignedManually)

            rdpcId = try container.decode(Int.self, forKey: .rdpcId)

            do {
                ewbn = try container.decode([String: Any].self, forKey: .ewbn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            awbType = try container.decode(String.self, forKey: .awbType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(excludeDps, forKey: .excludeDps)

            try? container.encodeIfPresent(isDpAssignedManually, forKey: .isDpAssignedManually)

            try? container.encodeIfPresent(rdpcId, forKey: .rdpcId)

            try? container.encode(ewbn, forKey: .ewbn)

            try? container.encodeIfPresent(awbType, forKey: .awbType)
        }
    }
}
