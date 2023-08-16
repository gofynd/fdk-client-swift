

import Foundation

public extension PlatformClient.Theme {
    /*
         Model: UpdateThemeRequestBody
         Used By: Theme
     */

    class UpdateThemeRequestBody: Codable {
        public var config: Config?

        public var font: Font?

        public enum CodingKeys: String, CodingKey {
            case config

            case font
        }

        public init(config: Config? = nil, font: Font? = nil) {
            self.config = config

            self.font = font
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                config = try container.decode(Config.self, forKey: .config)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                font = try container.decode(Font.self, forKey: .font)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(config, forKey: .config)

            try? container.encodeIfPresent(font, forKey: .font)
        }
    }
}

public extension PlatformClient.ApplicationClient.Theme {
    /*
         Model: UpdateThemeRequestBody
         Used By: Theme
     */

    class UpdateThemeRequestBody: Codable {
        public var config: Config?

        public var font: Font?

        public enum CodingKeys: String, CodingKey {
            case config

            case font
        }

        public init(config: Config? = nil, font: Font? = nil) {
            self.config = config

            self.font = font
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                config = try container.decode(Config.self, forKey: .config)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                font = try container.decode(Font.self, forKey: .font)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(config, forKey: .config)

            try? container.encodeIfPresent(font, forKey: .font)
        }
    }
}
