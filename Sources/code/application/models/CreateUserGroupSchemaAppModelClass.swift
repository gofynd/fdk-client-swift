

import Foundation
public extension ApplicationClient {
    /*
         Model: CreateUserGroupSchema
         Used By: User
     */
    class CreateUserGroupSchema: Codable {
        public var name: String

        public var description: String

        public var fileUrl: String

        public enum CodingKeys: String, CodingKey {
            case name

            case description

            case fileUrl = "file_url"
        }

        public init(description: String, fileUrl: String, name: String) {
            self.name = name

            self.description = description

            self.fileUrl = fileUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            description = try container.decode(String.self, forKey: .description)

            fileUrl = try container.decode(String.self, forKey: .fileUrl)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)
        }
    }
}
