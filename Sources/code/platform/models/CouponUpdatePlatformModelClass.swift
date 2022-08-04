

import Foundation
public extension PlatformClient {
    /*
         Model: CouponUpdate
         Used By: Cart
     */

    class CouponUpdate: Codable {
        public var dateMeta: CouponDateMeta?

        public var tags: [String]?

        public var displayMeta: DisplayMeta

        public var author: CouponAuthor?

        public var ownership: Ownership

        public var state: State?

        public var rule: [Rule]

        public var identifiers: Identifier

        public var typeSlug: String

        public var validity: Validity

        public var code: String

        public var action: CouponAction?

        public var restrictions: Restrictions?

        public var schedule: CouponSchedule?

        public var ruleDefinition: RuleDefinition

        public var validation: Validation?

        public enum CodingKeys: String, CodingKey {
            case dateMeta = "date_meta"

            case tags

            case displayMeta = "display_meta"

            case author

            case ownership

            case state

            case rule

            case identifiers

            case typeSlug = "type_slug"

            case validity

            case code

            case action

            case restrictions

            case schedule = "_schedule"

            case ruleDefinition = "rule_definition"

            case validation
        }

        public init(action: CouponAction? = nil, author: CouponAuthor? = nil, code: String, dateMeta: CouponDateMeta? = nil, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions? = nil, rule: [Rule], ruleDefinition: RuleDefinition, state: State? = nil, tags: [String]? = nil, typeSlug: String, validation: Validation? = nil, validity: Validity, schedule: CouponSchedule? = nil) {
            self.dateMeta = dateMeta

            self.tags = tags

            self.displayMeta = displayMeta

            self.author = author

            self.ownership = ownership

            self.state = state

            self.rule = rule

            self.identifiers = identifiers

            self.typeSlug = typeSlug

            self.validity = validity

            self.code = code

            self.action = action

            self.restrictions = restrictions

            self.schedule = schedule

            self.ruleDefinition = ruleDefinition

            self.validation = validation
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)

            do {
                author = try container.decode(CouponAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ownership = try container.decode(Ownership.self, forKey: .ownership)

            do {
                state = try container.decode(State.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            rule = try container.decode([Rule].self, forKey: .rule)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            validity = try container.decode(Validity.self, forKey: .validity)

            code = try container.decode(String.self, forKey: .code)

            do {
                action = try container.decode(CouponAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                restrictions = try container.decode(Restrictions.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode(CouponSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)

            do {
                validation = try container.decode(Validation.self, forKey: .validation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(validation, forKey: .validation)
        }
    }
}
