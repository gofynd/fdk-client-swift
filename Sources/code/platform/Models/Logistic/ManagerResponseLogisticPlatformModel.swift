

import Foundation

public extension PlatformClient.Logistic {
    /*
         Model: ManagerResponse
         Used By: Logistic
     */

    class ManagerResponse: Codable {
        public var email: String?

        public var name: String?

        public var mobileNo: MobileNo?

        public enum CodingKeys: String, CodingKey {
            case email

            case name

            case mobileNo = "mobile_no"
        }

        public init(email: String? = nil, mobileNo: MobileNo? = nil, name: String? = nil) {
            self.email = email

            self.name = name

            self.mobileNo = mobileNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobileNo = try container.decode(MobileNo.self, forKey: .mobileNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(mobileNo, forKey: .mobileNo)
        }
    }
}

public extension PlatformClient.ApplicationClient.Logistic {
    /*
         Model: ManagerResponse
         Used By: Logistic
     */

    class ManagerResponse: Codable {
        public var email: String?

        public var name: String?

        public var mobileNo: MobileNo?

        public enum CodingKeys: String, CodingKey {
            case email

            case name

            case mobileNo = "mobile_no"
        }

        public init(email: String? = nil, mobileNo: MobileNo? = nil, name: String? = nil) {
            self.email = email

            self.name = name

            self.mobileNo = mobileNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobileNo = try container.decode(MobileNo.self, forKey: .mobileNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(mobileNo, forKey: .mobileNo)
        }
    }
}
