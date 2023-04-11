

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var delightsUserName: String?

        public var displayName: String

        public var ifscCode: String

        public var id: Int

        public var address: String

        public var comment: String?

        public var mobile: String?

        public var title: String

        public var accountNo: String

        public var subtitle: String

        public var isActive: Bool

        public var createdOn: String

        public var branchName: String?

        public var accountHolder: String

        public var bankName: String

        public var email: String

        public var transferMode: String

        public var beneficiaryId: String

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case delightsUserName = "delights_user_name"

            case displayName = "display_name"

            case ifscCode = "ifsc_code"

            case id

            case address

            case comment

            case mobile

            case title

            case accountNo = "account_no"

            case subtitle

            case isActive = "is_active"

            case createdOn = "created_on"

            case branchName = "branch_name"

            case accountHolder = "account_holder"

            case bankName = "bank_name"

            case email

            case transferMode = "transfer_mode"

            case beneficiaryId = "beneficiary_id"

            case modifiedOn = "modified_on"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.delightsUserName = delightsUserName

            self.displayName = displayName

            self.ifscCode = ifscCode

            self.id = id

            self.address = address

            self.comment = comment

            self.mobile = mobile

            self.title = title

            self.accountNo = accountNo

            self.subtitle = subtitle

            self.isActive = isActive

            self.createdOn = createdOn

            self.branchName = branchName

            self.accountHolder = accountHolder

            self.bankName = bankName

            self.email = email

            self.transferMode = transferMode

            self.beneficiaryId = beneficiaryId

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            id = try container.decode(Int.self, forKey: .id)

            address = try container.decode(String.self, forKey: .address)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            bankName = try container.decode(String.self, forKey: .bankName)

            email = try container.decode(String.self, forKey: .email)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var delightsUserName: String?

        public var displayName: String

        public var ifscCode: String

        public var id: Int

        public var address: String

        public var comment: String?

        public var mobile: String?

        public var title: String

        public var accountNo: String

        public var subtitle: String

        public var isActive: Bool

        public var createdOn: String

        public var branchName: String?

        public var accountHolder: String

        public var bankName: String

        public var email: String

        public var transferMode: String

        public var beneficiaryId: String

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case delightsUserName = "delights_user_name"

            case displayName = "display_name"

            case ifscCode = "ifsc_code"

            case id

            case address

            case comment

            case mobile

            case title

            case accountNo = "account_no"

            case subtitle

            case isActive = "is_active"

            case createdOn = "created_on"

            case branchName = "branch_name"

            case accountHolder = "account_holder"

            case bankName = "bank_name"

            case email

            case transferMode = "transfer_mode"

            case beneficiaryId = "beneficiary_id"

            case modifiedOn = "modified_on"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.delightsUserName = delightsUserName

            self.displayName = displayName

            self.ifscCode = ifscCode

            self.id = id

            self.address = address

            self.comment = comment

            self.mobile = mobile

            self.title = title

            self.accountNo = accountNo

            self.subtitle = subtitle

            self.isActive = isActive

            self.createdOn = createdOn

            self.branchName = branchName

            self.accountHolder = accountHolder

            self.bankName = bankName

            self.email = email

            self.transferMode = transferMode

            self.beneficiaryId = beneficiaryId

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            id = try container.decode(Int.self, forKey: .id)

            address = try container.decode(String.self, forKey: .address)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            bankName = try container.decode(String.self, forKey: .bankName)

            email = try container.decode(String.self, forKey: .email)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
