

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: DeviceDetails
         Used By: Payment
     */
    class DeviceDetails: Codable {
        public var identifierType: String?

        public var os: String?

        public var deviceType: String?

        public var deviceMake: String?

        public var osVersion: String?

        public var identificationNumber: String?

        public var deviceModel: String?

        public enum CodingKeys: String, CodingKey {
            case identifierType = "identifier_type"

            case os

            case deviceType = "device_type"

            case deviceMake = "device_make"

            case osVersion = "os_version"

            case identificationNumber = "identification_number"

            case deviceModel = "device_model"
        }

        public init(deviceMake: String? = nil, deviceModel: String? = nil, deviceType: String? = nil, identificationNumber: String? = nil, identifierType: String? = nil, os: String? = nil, osVersion: String? = nil) {
            self.identifierType = identifierType

            self.os = os

            self.deviceType = deviceType

            self.deviceMake = deviceMake

            self.osVersion = osVersion

            self.identificationNumber = identificationNumber

            self.deviceModel = deviceModel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                identifierType = try container.decode(String.self, forKey: .identifierType)

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
                deviceType = try container.decode(String.self, forKey: .deviceType)

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
                osVersion = try container.decode(String.self, forKey: .osVersion)

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
                deviceModel = try container.decode(String.self, forKey: .deviceModel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(identifierType, forKey: .identifierType)

            try? container.encode(os, forKey: .os)

            try? container.encode(deviceType, forKey: .deviceType)

            try? container.encode(deviceMake, forKey: .deviceMake)

            try? container.encode(osVersion, forKey: .osVersion)

            try? container.encode(identificationNumber, forKey: .identificationNumber)

            try? container.encode(deviceModel, forKey: .deviceModel)
        }
    }
}
