import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: DeviceDetails
         Used By: Payment
     */
    class DeviceDetails: Codable {
        public var deviceType: String?

        public var deviceModel: String?

        public var deviceMake: String?

        public var identifierType: String?

        public var identificationNumber: String?

        public var os: String?

        public var osVersion: String?

        public enum CodingKeys: String, CodingKey {
            case deviceType = "device_type"

            case deviceModel = "device_model"

            case deviceMake = "device_make"

            case identifierType = "identifier_type"

            case identificationNumber = "identification_number"

            case os

            case osVersion = "os_version"
        }

        public init(deviceMake: String?, deviceModel: String?, deviceType: String?, identificationNumber: String?, identifierType: String?, os: String?, osVersion: String?) {
            self.deviceType = deviceType

            self.deviceModel = deviceModel

            self.deviceMake = deviceMake

            self.identifierType = identifierType

            self.identificationNumber = identificationNumber

            self.os = os

            self.osVersion = osVersion
        }

        public func duplicate() -> DeviceDetails {
            let dict = self.dictionary!
            let copy = DeviceDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                deviceType = try container.decode(String.self, forKey: .deviceType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deviceModel = try container.decode(String.self, forKey: .deviceModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deviceMake = try container.decode(String.self, forKey: .deviceMake)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifierType = try container.decode(String.self, forKey: .identifierType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identificationNumber = try container.decode(String.self, forKey: .identificationNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                os = try container.decode(String.self, forKey: .os)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                osVersion = try container.decode(String.self, forKey: .osVersion)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(deviceType, forKey: .deviceType)

            try? container.encode(deviceModel, forKey: .deviceModel)

            try? container.encode(deviceMake, forKey: .deviceMake)

            try? container.encode(identifierType, forKey: .identifierType)

            try? container.encode(identificationNumber, forKey: .identificationNumber)

            try? container.encode(os, forKey: .os)

            try? container.encode(osVersion, forKey: .osVersion)
        }
    }
}
