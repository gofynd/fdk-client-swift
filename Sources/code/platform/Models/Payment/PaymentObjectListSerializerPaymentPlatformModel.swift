

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var aggregatorPaymentObject: [String: Any]?

        public var paymentId: String?

        public var applicationId: String

        public var collectedBy: String

        public var allStatus: [String]

        public var refundObject: [String: Any]?

        public var currentStatus: String

        public var paymentModeIdentifier: String

        public var currency: String

        public var paymentGateway: String

        public var paymentMode: String

        public var id: String

        public var companyId: String

        public var refundedBy: String

        public var modifiedOn: String

        public var userObject: [String: Any]

        public var createdOn: String

        public var amountInPaisa: String

        public enum CodingKeys: String, CodingKey {
            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentId = "payment_id"

            case applicationId = "application_id"

            case collectedBy = "collected_by"

            case allStatus = "all_status"

            case refundObject = "refund_object"

            case currentStatus = "current_status"

            case paymentModeIdentifier = "payment_mode_identifier"

            case currency

            case paymentGateway = "payment_gateway"

            case paymentMode = "payment_mode"

            case id

            case companyId = "company_id"

            case refundedBy = "refunded_by"

            case modifiedOn = "modified_on"

            case userObject = "user_object"

            case createdOn = "created_on"

            case amountInPaisa = "amount_in_paisa"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentId = paymentId

            self.applicationId = applicationId

            self.collectedBy = collectedBy

            self.allStatus = allStatus

            self.refundObject = refundObject

            self.currentStatus = currentStatus

            self.paymentModeIdentifier = paymentModeIdentifier

            self.currency = currency

            self.paymentGateway = paymentGateway

            self.paymentMode = paymentMode

            self.id = id

            self.companyId = companyId

            self.refundedBy = refundedBy

            self.modifiedOn = modifiedOn

            self.userObject = userObject

            self.createdOn = createdOn

            self.amountInPaisa = amountInPaisa
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            currency = try container.decode(String.self, forKey: .currency)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            id = try container.decode(String.self, forKey: .id)

            companyId = try container.decode(String.self, forKey: .companyId)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var aggregatorPaymentObject: [String: Any]?

        public var paymentId: String?

        public var applicationId: String

        public var collectedBy: String

        public var allStatus: [String]

        public var refundObject: [String: Any]?

        public var currentStatus: String

        public var paymentModeIdentifier: String

        public var currency: String

        public var paymentGateway: String

        public var paymentMode: String

        public var id: String

        public var companyId: String

        public var refundedBy: String

        public var modifiedOn: String

        public var userObject: [String: Any]

        public var createdOn: String

        public var amountInPaisa: String

        public enum CodingKeys: String, CodingKey {
            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentId = "payment_id"

            case applicationId = "application_id"

            case collectedBy = "collected_by"

            case allStatus = "all_status"

            case refundObject = "refund_object"

            case currentStatus = "current_status"

            case paymentModeIdentifier = "payment_mode_identifier"

            case currency

            case paymentGateway = "payment_gateway"

            case paymentMode = "payment_mode"

            case id

            case companyId = "company_id"

            case refundedBy = "refunded_by"

            case modifiedOn = "modified_on"

            case userObject = "user_object"

            case createdOn = "created_on"

            case amountInPaisa = "amount_in_paisa"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentId = paymentId

            self.applicationId = applicationId

            self.collectedBy = collectedBy

            self.allStatus = allStatus

            self.refundObject = refundObject

            self.currentStatus = currentStatus

            self.paymentModeIdentifier = paymentModeIdentifier

            self.currency = currency

            self.paymentGateway = paymentGateway

            self.paymentMode = paymentMode

            self.id = id

            self.companyId = companyId

            self.refundedBy = refundedBy

            self.modifiedOn = modifiedOn

            self.userObject = userObject

            self.createdOn = createdOn

            self.amountInPaisa = amountInPaisa
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            currency = try container.decode(String.self, forKey: .currency)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            id = try container.decode(String.self, forKey: .id)

            companyId = try container.decode(String.self, forKey: .companyId)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)
        }
    }
}
