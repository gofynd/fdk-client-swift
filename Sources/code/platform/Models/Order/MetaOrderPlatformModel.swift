

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Meta
         Used By: Order
     */

    class Meta: Codable {
        public var stateManagerUsed: String?

        public var kafkaEmissionStatus: Int?

        public enum CodingKeys: String, CodingKey {
            case stateManagerUsed = "state_manager_used"

            case kafkaEmissionStatus = "kafka_emission_status"
        }

        public init(kafkaEmissionStatus: Int? = nil, stateManagerUsed: String? = nil) {
            self.stateManagerUsed = stateManagerUsed

            self.kafkaEmissionStatus = kafkaEmissionStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                stateManagerUsed = try container.decode(String.self, forKey: .stateManagerUsed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                kafkaEmissionStatus = try container.decode(Int.self, forKey: .kafkaEmissionStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stateManagerUsed, forKey: .stateManagerUsed)

            try? container.encodeIfPresent(kafkaEmissionStatus, forKey: .kafkaEmissionStatus)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Meta
         Used By: Order
     */

    class Meta: Codable {
        public var stateManagerUsed: String?

        public var kafkaEmissionStatus: Int?

        public enum CodingKeys: String, CodingKey {
            case stateManagerUsed = "state_manager_used"

            case kafkaEmissionStatus = "kafka_emission_status"
        }

        public init(kafkaEmissionStatus: Int? = nil, stateManagerUsed: String? = nil) {
            self.stateManagerUsed = stateManagerUsed

            self.kafkaEmissionStatus = kafkaEmissionStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                stateManagerUsed = try container.decode(String.self, forKey: .stateManagerUsed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                kafkaEmissionStatus = try container.decode(Int.self, forKey: .kafkaEmissionStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stateManagerUsed, forKey: .stateManagerUsed)

            try? container.encodeIfPresent(kafkaEmissionStatus, forKey: .kafkaEmissionStatus)
        }
    }
}
