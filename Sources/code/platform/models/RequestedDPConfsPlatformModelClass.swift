

import Foundation
public extension PlatformClient {
    /*
         Model: RequestedDPConfs
         Used By: Order
     */

    class RequestedDPConfs: Codable {
        public var rdpcId: Int

        public var awbType: String

        public var excludeDps: [Int]?

        public var isDpAssignedManually: Bool

        public var ewbn: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case rdpcId = "rdpc_id"

            case awbType = "awb_type"

            case excludeDps = "exclude_dps"

            case isDpAssignedManually = "is_dp_assigned_manually"

            case ewbn
        }

        public init(awbType: String, ewbn: [String: Any]? = nil, excludeDps: [Int]? = nil, isDpAssignedManually: Bool, rdpcId: Int) {
            self.rdpcId = rdpcId

            self.awbType = awbType

            self.excludeDps = excludeDps

            self.isDpAssignedManually = isDpAssignedManually

            self.ewbn = ewbn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            rdpcId = try container.decode(Int.self, forKey: .rdpcId)

            awbType = try container.decode(String.self, forKey: .awbType)

            do {
                excludeDps = try container.decode([Int].self, forKey: .excludeDps)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isDpAssignedManually = try container.decode(Bool.self, forKey: .isDpAssignedManually)

            do {
                ewbn = try container.decode([String: Any].self, forKey: .ewbn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(rdpcId, forKey: .rdpcId)

            try? container.encodeIfPresent(awbType, forKey: .awbType)

            try? container.encodeIfPresent(excludeDps, forKey: .excludeDps)

            try? container.encodeIfPresent(isDpAssignedManually, forKey: .isDpAssignedManually)

            try? container.encode(ewbn, forKey: .ewbn)
        }
    }
}
