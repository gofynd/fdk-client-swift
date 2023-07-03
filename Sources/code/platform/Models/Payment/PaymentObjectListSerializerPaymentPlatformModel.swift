

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var allStatus: [String]

        public var collectedBy: String

        public var aggregatorPaymentObject: [String: Any]?

        public var companyId: String

        public var currency: String

        public var amountInPaisa: String

        public var createdOn: String

        public var modifiedOn: String

        public var userObject: [String: Any]

        public var paymentMode: String

        public var refundObject: [String: Any]?

        public var currentStatus: String

        public var id: String

        public var paymentModeIdentifier: String

        public var paymentGateway: String

        public var paymentId: String?

        public var refundedBy: String

        public var applicationId: String

        public enum CodingKeys: String, CodingKey {
            case allStatus = "all_status"

            case collectedBy = "collected_by"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case companyId = "company_id"

            case currency

            case amountInPaisa = "amount_in_paisa"

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case userObject = "user_object"

            case paymentMode = "payment_mode"

            case refundObject = "refund_object"

            case currentStatus = "current_status"

            case id

            case paymentModeIdentifier = "payment_mode_identifier"

            case paymentGateway = "payment_gateway"

            case paymentId = "payment_id"

            case refundedBy = "refunded_by"

            case applicationId = "application_id"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.allStatus = allStatus

            self.collectedBy = collectedBy

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.companyId = companyId

            self.currency = currency

            self.amountInPaisa = amountInPaisa

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.userObject = userObject

            self.paymentMode = paymentMode

            self.refundObject = refundObject

            self.currentStatus = currentStatus

            self.id = id

            self.paymentModeIdentifier = paymentModeIdentifier

            self.paymentGateway = paymentGateway

            self.paymentId = paymentId

            self.refundedBy = refundedBy

            self.applicationId = applicationId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(String.self, forKey: .companyId)

            currency = try container.decode(String.self, forKey: .currency)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            id = try container.decode(String.self, forKey: .id)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            applicationId = try container.decode(String.self, forKey: .applicationId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var allStatus: [String]

        public var collectedBy: String

        public var aggregatorPaymentObject: [String: Any]?

        public var companyId: String

        public var currency: String

        public var amountInPaisa: String

        public var createdOn: String

        public var modifiedOn: String

        public var userObject: [String: Any]

        public var paymentMode: String

        public var refundObject: [String: Any]?

        public var currentStatus: String

        public var id: String

        public var paymentModeIdentifier: String

        public var paymentGateway: String

        public var paymentId: String?

        public var refundedBy: String

        public var applicationId: String

        public enum CodingKeys: String, CodingKey {
            case allStatus = "all_status"

            case collectedBy = "collected_by"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case companyId = "company_id"

            case currency

            case amountInPaisa = "amount_in_paisa"

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case userObject = "user_object"

            case paymentMode = "payment_mode"

            case refundObject = "refund_object"

            case currentStatus = "current_status"

            case id

            case paymentModeIdentifier = "payment_mode_identifier"

            case paymentGateway = "payment_gateway"

            case paymentId = "payment_id"

            case refundedBy = "refunded_by"

            case applicationId = "application_id"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.allStatus = allStatus

            self.collectedBy = collectedBy

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.companyId = companyId

            self.currency = currency

            self.amountInPaisa = amountInPaisa

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.userObject = userObject

            self.paymentMode = paymentMode

            self.refundObject = refundObject

            self.currentStatus = currentStatus

            self.id = id

            self.paymentModeIdentifier = paymentModeIdentifier

            self.paymentGateway = paymentGateway

            self.paymentId = paymentId

            self.refundedBy = refundedBy

            self.applicationId = applicationId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(String.self, forKey: .companyId)

            currency = try container.decode(String.self, forKey: .currency)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            id = try container.decode(String.self, forKey: .id)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            applicationId = try container.decode(String.self, forKey: .applicationId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
        }
    }
}
