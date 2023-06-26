

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var refundedBy: String

        public var paymentGateway: String

        public var applicationId: String

        public var createdOn: String

        public var aggregatorPaymentObject: [String: Any]?

        public var currentStatus: String

        public var collectedBy: String

        public var userObject: [String: Any]

        public var refundObject: [String: Any]?

        public var allStatus: [String]

        public var paymentMode: String

        public var paymentId: String?

        public var id: String

        public var paymentModeIdentifier: String

        public var currency: String

        public var amountInPaisa: String

        public var companyId: String

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case refundedBy = "refunded_by"

            case paymentGateway = "payment_gateway"

            case applicationId = "application_id"

            case createdOn = "created_on"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case currentStatus = "current_status"

            case collectedBy = "collected_by"

            case userObject = "user_object"

            case refundObject = "refund_object"

            case allStatus = "all_status"

            case paymentMode = "payment_mode"

            case paymentId = "payment_id"

            case id

            case paymentModeIdentifier = "payment_mode_identifier"

            case currency

            case amountInPaisa = "amount_in_paisa"

            case companyId = "company_id"

            case modifiedOn = "modified_on"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.refundedBy = refundedBy

            self.paymentGateway = paymentGateway

            self.applicationId = applicationId

            self.createdOn = createdOn

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.currentStatus = currentStatus

            self.collectedBy = collectedBy

            self.userObject = userObject

            self.refundObject = refundObject

            self.allStatus = allStatus

            self.paymentMode = paymentMode

            self.paymentId = paymentId

            self.id = id

            self.paymentModeIdentifier = paymentModeIdentifier

            self.currency = currency

            self.amountInPaisa = amountInPaisa

            self.companyId = companyId

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            currency = try container.decode(String.self, forKey: .currency)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            companyId = try container.decode(String.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var refundedBy: String

        public var paymentGateway: String

        public var applicationId: String

        public var createdOn: String

        public var aggregatorPaymentObject: [String: Any]?

        public var currentStatus: String

        public var collectedBy: String

        public var userObject: [String: Any]

        public var refundObject: [String: Any]?

        public var allStatus: [String]

        public var paymentMode: String

        public var paymentId: String?

        public var id: String

        public var paymentModeIdentifier: String

        public var currency: String

        public var amountInPaisa: String

        public var companyId: String

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case refundedBy = "refunded_by"

            case paymentGateway = "payment_gateway"

            case applicationId = "application_id"

            case createdOn = "created_on"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case currentStatus = "current_status"

            case collectedBy = "collected_by"

            case userObject = "user_object"

            case refundObject = "refund_object"

            case allStatus = "all_status"

            case paymentMode = "payment_mode"

            case paymentId = "payment_id"

            case id

            case paymentModeIdentifier = "payment_mode_identifier"

            case currency

            case amountInPaisa = "amount_in_paisa"

            case companyId = "company_id"

            case modifiedOn = "modified_on"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.refundedBy = refundedBy

            self.paymentGateway = paymentGateway

            self.applicationId = applicationId

            self.createdOn = createdOn

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.currentStatus = currentStatus

            self.collectedBy = collectedBy

            self.userObject = userObject

            self.refundObject = refundObject

            self.allStatus = allStatus

            self.paymentMode = paymentMode

            self.paymentId = paymentId

            self.id = id

            self.paymentModeIdentifier = paymentModeIdentifier

            self.currency = currency

            self.amountInPaisa = amountInPaisa

            self.companyId = companyId

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            currency = try container.decode(String.self, forKey: .currency)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            companyId = try container.decode(String.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
