

import Foundation

public extension PlatformClient.Order {
    /*
         Model: LockData
         Used By: Order
     */

    class LockData: Codable {
        public var mto: Bool?

        public var lockMessage: String?

        public var locked: Bool?

        public enum CodingKeys: String, CodingKey {
            case mto

            case lockMessage = "lock_message"

            case locked
        }

        public init(locked: Bool? = nil, lockMessage: String? = nil, mto: Bool? = nil) {
            self.mto = mto

            self.lockMessage = lockMessage

            self.locked = locked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mto = try container.decode(Bool.self, forKey: .mto)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lockMessage = try container.decode(String.self, forKey: .lockMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                locked = try container.decode(Bool.self, forKey: .locked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mto, forKey: .mto)

            try? container.encodeIfPresent(lockMessage, forKey: .lockMessage)

            try? container.encodeIfPresent(locked, forKey: .locked)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: LockData
         Used By: Order
     */

    class LockData: Codable {
        public var mto: Bool?

        public var lockMessage: String?

        public var locked: Bool?

        public enum CodingKeys: String, CodingKey {
            case mto

            case lockMessage = "lock_message"

            case locked
        }

        public init(locked: Bool? = nil, lockMessage: String? = nil, mto: Bool? = nil) {
            self.mto = mto

            self.lockMessage = lockMessage

            self.locked = locked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mto = try container.decode(Bool.self, forKey: .mto)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lockMessage = try container.decode(String.self, forKey: .lockMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                locked = try container.decode(Bool.self, forKey: .locked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mto, forKey: .mto)

            try? container.encodeIfPresent(lockMessage, forKey: .lockMessage)

            try? container.encodeIfPresent(locked, forKey: .locked)
        }
    }
}