

import Foundation

public extension PlatformClient.Theme {
    /*
         Model: GlobalConfig
         Used By: Theme
     */

    class GlobalConfig: Codable {
        public var statics: StaticConfig?

        public var auth: AuthConfig?

        public var palette: PaletteConfig?

        public enum CodingKeys: String, CodingKey {
            case statics

            case auth

            case palette
        }

        public init(auth: AuthConfig? = nil, palette: PaletteConfig? = nil, statics: StaticConfig? = nil) {
            self.statics = statics

            self.auth = auth

            self.palette = palette
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                statics = try container.decode(StaticConfig.self, forKey: .statics)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                auth = try container.decode(AuthConfig.self, forKey: .auth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                palette = try container.decode(PaletteConfig.self, forKey: .palette)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(statics, forKey: .statics)

            try? container.encodeIfPresent(auth, forKey: .auth)

            try? container.encodeIfPresent(palette, forKey: .palette)
        }
    }
}

public extension PlatformClient.ApplicationClient.Theme {
    /*
         Model: GlobalConfig
         Used By: Theme
     */

    class GlobalConfig: Codable {
        public var statics: StaticConfig?

        public var auth: AuthConfig?

        public var palette: PaletteConfig?

        public enum CodingKeys: String, CodingKey {
            case statics

            case auth

            case palette
        }

        public init(auth: AuthConfig? = nil, palette: PaletteConfig? = nil, statics: StaticConfig? = nil) {
            self.statics = statics

            self.auth = auth

            self.palette = palette
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                statics = try container.decode(StaticConfig.self, forKey: .statics)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                auth = try container.decode(AuthConfig.self, forKey: .auth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                palette = try container.decode(PaletteConfig.self, forKey: .palette)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(statics, forKey: .statics)

            try? container.encodeIfPresent(auth, forKey: .auth)

            try? container.encodeIfPresent(palette, forKey: .palette)
        }
    }
}
