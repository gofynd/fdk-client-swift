

import Foundation
public extension PlatformClient {
    /*
         Model: RequestedDPConfs
         Used By: Order
     */

    class RequestedDPConfs: Codable {
        public var rdpcId: Int

        public var excludeDps: [Int]?

        public var awbType: String

        public var ewbn: [String: Any]?

        public var isDpAssignedManually: Bool

        public enum CodingKeys: String, CodingKey {
            case rdpcId = "rdpc_id"

            case excludeDps = "exclude_dps"

            case awbType = "awb_type"

            case ewbn

            case isDpAssignedManually = "is_dp_assigned_manually"
        }

        public init(awbType: String, ewbn: [String: Any]? = nil, excludeDps: [Int]? = nil, isDpAssignedManually: Bool, rdpcId: Int) {
            self.rdpcId = rdpcId

            self.excludeDps = excludeDps

            self.awbType = awbType

            self.ewbn = ewbn

            self.isDpAssignedManually = isDpAssignedManually
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            rdpcId = try container.decode(Int.self, forKey: .rdpcId)

            do {
                excludeDps = try container.decode([Int].self, forKey: .excludeDps)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            awbType = try container.decode(String.self, forKey: .awbType)

            do {
                ewbn = try container.decode([String: Any].self, forKey: .ewbn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isDpAssignedManually = try container.decode(Bool.self, forKey: .isDpAssignedManually)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(rdpcId, forKey: .rdpcId)

            try? container.encodeIfPresent(excludeDps, forKey: .excludeDps)

            try? container.encodeIfPresent(awbType, forKey: .awbType)

            try? container.encode(ewbn, forKey: .ewbn)

            try? container.encodeIfPresent(isDpAssignedManually, forKey: .isDpAssignedManually)
        }
    }
}
