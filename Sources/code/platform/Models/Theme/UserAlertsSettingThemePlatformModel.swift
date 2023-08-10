

import Foundation

public extension PlatformClient.Theme {
    /*
         Model: UserAlertsSetting
         Used By: Theme
     */

    class UserAlertsSetting: Codable {
        public var successBackground: String?

        public var successText: String?

        public var errorBackground: String?

        public var errorText: String?

        public var infoBackground: String?

        public var infoText: String?

        public enum CodingKeys: String, CodingKey {
            case successBackground = "success_background"

            case successText = "success_text"

            case errorBackground = "error_background"

            case errorText = "error_text"

            case infoBackground = "info_background"

            case infoText = "info_text"
        }

        public init(errorBackground: String? = nil, errorText: String? = nil, infoBackground: String? = nil, infoText: String? = nil, successBackground: String? = nil, successText: String? = nil) {
            self.successBackground = successBackground

            self.successText = successText

            self.errorBackground = errorBackground

            self.errorText = errorText

            self.infoBackground = infoBackground

            self.infoText = infoText
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                successBackground = try container.decode(String.self, forKey: .successBackground)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                successText = try container.decode(String.self, forKey: .successText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                errorBackground = try container.decode(String.self, forKey: .errorBackground)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                errorText = try container.decode(String.self, forKey: .errorText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                infoBackground = try container.decode(String.self, forKey: .infoBackground)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                infoText = try container.decode(String.self, forKey: .infoText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(successBackground, forKey: .successBackground)

            try? container.encodeIfPresent(successText, forKey: .successText)

            try? container.encodeIfPresent(errorBackground, forKey: .errorBackground)

            try? container.encodeIfPresent(errorText, forKey: .errorText)

            try? container.encodeIfPresent(infoBackground, forKey: .infoBackground)

            try? container.encodeIfPresent(infoText, forKey: .infoText)
        }
    }
}

public extension PlatformClient.ApplicationClient.Theme {
    /*
         Model: UserAlertsSetting
         Used By: Theme
     */

    class UserAlertsSetting: Codable {
        public var successBackground: String?

        public var successText: String?

        public var errorBackground: String?

        public var errorText: String?

        public var infoBackground: String?

        public var infoText: String?

        public enum CodingKeys: String, CodingKey {
            case successBackground = "success_background"

            case successText = "success_text"

            case errorBackground = "error_background"

            case errorText = "error_text"

            case infoBackground = "info_background"

            case infoText = "info_text"
        }

        public init(errorBackground: String? = nil, errorText: String? = nil, infoBackground: String? = nil, infoText: String? = nil, successBackground: String? = nil, successText: String? = nil) {
            self.successBackground = successBackground

            self.successText = successText

            self.errorBackground = errorBackground

            self.errorText = errorText

            self.infoBackground = infoBackground

            self.infoText = infoText
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                successBackground = try container.decode(String.self, forKey: .successBackground)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                successText = try container.decode(String.self, forKey: .successText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                errorBackground = try container.decode(String.self, forKey: .errorBackground)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                errorText = try container.decode(String.self, forKey: .errorText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                infoBackground = try container.decode(String.self, forKey: .infoBackground)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                infoText = try container.decode(String.self, forKey: .infoText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(successBackground, forKey: .successBackground)

            try? container.encodeIfPresent(successText, forKey: .successText)

            try? container.encodeIfPresent(errorBackground, forKey: .errorBackground)

            try? container.encodeIfPresent(errorText, forKey: .errorText)

            try? container.encodeIfPresent(infoBackground, forKey: .infoBackground)

            try? container.encodeIfPresent(infoText, forKey: .infoText)
        }
    }
}
