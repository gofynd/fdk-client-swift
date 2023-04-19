

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: GetUserCODLimitResponse
         Used By: Payment
     */

    class GetUserCODLimitResponse: Codable {
        public var success: Bool

        public var userCodData: CODdata

        public enum CodingKeys: String, CodingKey {
            case success

            case userCodData = "user_cod_data"
        }

        public init(success: Bool, userCodData: CODdata) {
            self.success = success

            self.userCodData = userCodData
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            userCodData = try container.decode(CODdata.self, forKey: .userCodData)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(userCodData, forKey: .userCodData)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: GetUserCODLimitResponse
         Used By: Payment
     */

    class GetUserCODLimitResponse: Codable {
        public var success: Bool

        public var userCodData: CODdata

        public enum CodingKeys: String, CodingKey {
            case success

            case userCodData = "user_cod_data"
        }

        public init(success: Bool, userCodData: CODdata) {
            self.success = success

            self.userCodData = userCodData
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            userCodData = try container.decode(CODdata.self, forKey: .userCodData)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(userCodData, forKey: .userCodData)
        }
    }
}
