

import Foundation

public extension PlatformClient.Theme {
    /*
         Model: GlobalConfigV2
         Used By: Theme
     */

    class GlobalConfigV2: Codable {
        public var statics: StaticConfigV2?

        public var auth: AuthConfigV2?

        public var palette: PaletteConfigV2?

        public enum CodingKeys: String, CodingKey {
            case statics

            case auth

            case palette
        }

        public init(auth: AuthConfigV2? = nil, palette: PaletteConfigV2? = nil, statics: StaticConfigV2? = nil) {
            self.statics = statics

            self.auth = auth

            self.palette = palette
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                statics = try container.decode(StaticConfigV2.self, forKey: .statics)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                auth = try container.decode(AuthConfigV2.self, forKey: .auth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                palette = try container.decode(PaletteConfigV2.self, forKey: .palette)

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
         Model: GlobalConfigV2
         Used By: Theme
     */

    class GlobalConfigV2: Codable {
        public var statics: StaticConfigV2?

        public var auth: AuthConfigV2?

        public var palette: PaletteConfigV2?

        public enum CodingKeys: String, CodingKey {
            case statics

            case auth

            case palette
        }

        public init(auth: AuthConfigV2? = nil, palette: PaletteConfigV2? = nil, statics: StaticConfigV2? = nil) {
            self.statics = statics

            self.auth = auth

            self.palette = palette
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                statics = try container.decode(StaticConfigV2.self, forKey: .statics)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                auth = try container.decode(AuthConfigV2.self, forKey: .auth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                palette = try container.decode(PaletteConfigV2.self, forKey: .palette)

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
