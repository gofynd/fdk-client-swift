

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: CompanyDpAccountResponse
         Used By: Serviceability
     */

    class CompanyDpAccountResponse: Codable {
        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case success
        }

        public init(success: Bool) {
            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: CompanyDpAccountResponse
         Used By: Serviceability
     */

    class CompanyDpAccountResponse: Codable {
        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case success
        }

        public init(success: Bool) {
            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
