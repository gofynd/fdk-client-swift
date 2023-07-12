

import Foundation

public extension PlatformClient.Communication {
    /*
         Model: GlobalVariablesReq
         Used By: Communication
     */

    class GlobalVariablesReq: Codable {
        public var globalVariables: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case globalVariables = "global_variables"
        }

        public init(globalVariables: [String: Any]? = nil) {
            self.globalVariables = globalVariables
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                globalVariables = try container.decode([String: Any].self, forKey: .globalVariables)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(globalVariables, forKey: .globalVariables)
        }
    }
}

public extension PlatformClient.ApplicationClient.Communication {
    /*
         Model: GlobalVariablesReq
         Used By: Communication
     */

    class GlobalVariablesReq: Codable {
        public var globalVariables: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case globalVariables = "global_variables"
        }

        public init(globalVariables: [String: Any]? = nil) {
            self.globalVariables = globalVariables
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                globalVariables = try container.decode([String: Any].self, forKey: .globalVariables)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(globalVariables, forKey: .globalVariables)
        }
    }
}
