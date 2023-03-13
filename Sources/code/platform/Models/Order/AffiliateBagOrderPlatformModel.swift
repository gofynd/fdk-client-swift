

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceEffective: Double

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var hsnCodeId: String

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var modifiedOn: String

        public var unitPrice: Double

        public var priceMarked: Double

        public var id: String

        public var transferPrice: Int

        public var discount: Double

        public var itemSize: String

        public var storeId: Int

        public var fyndStoreId: String

        public var avlQty: Int

        public var itemId: Int

        public var quantity: Int

        public var deliveryCharge: Double

        public var sku: String

        public var companyId: Int

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case hsnCodeId = "hsn_code_id"

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case id = "_id"

            case transferPrice = "transfer_price"

            case discount

            case itemSize = "item_size"

            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"

            case avlQty = "avl_qty"

            case itemId = "item_id"

            case quantity

            case deliveryCharge = "delivery_charge"

            case sku

            case companyId = "company_id"

            case sellerIdentifier = "seller_identifier"

            case identifier
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceEffective = priceEffective

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.hsnCodeId = hsnCodeId

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.id = id

            self.transferPrice = transferPrice

            self.discount = discount

            self.itemSize = itemSize

            self.storeId = storeId

            self.fyndStoreId = fyndStoreId

            self.avlQty = avlQty

            self.itemId = itemId

            self.quantity = quantity

            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.companyId = companyId

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            id = try container.decode(String.self, forKey: .id)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            itemId = try container.decode(Int.self, forKey: .itemId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceEffective: Double

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var hsnCodeId: String

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var modifiedOn: String

        public var unitPrice: Double

        public var priceMarked: Double

        public var id: String

        public var transferPrice: Int

        public var discount: Double

        public var itemSize: String

        public var storeId: Int

        public var fyndStoreId: String

        public var avlQty: Int

        public var itemId: Int

        public var quantity: Int

        public var deliveryCharge: Double

        public var sku: String

        public var companyId: Int

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case hsnCodeId = "hsn_code_id"

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case id = "_id"

            case transferPrice = "transfer_price"

            case discount

            case itemSize = "item_size"

            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"

            case avlQty = "avl_qty"

            case itemId = "item_id"

            case quantity

            case deliveryCharge = "delivery_charge"

            case sku

            case companyId = "company_id"

            case sellerIdentifier = "seller_identifier"

            case identifier
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceEffective = priceEffective

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.hsnCodeId = hsnCodeId

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.id = id

            self.transferPrice = transferPrice

            self.discount = discount

            self.itemSize = itemSize

            self.storeId = storeId

            self.fyndStoreId = fyndStoreId

            self.avlQty = avlQty

            self.itemId = itemId

            self.quantity = quantity

            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.companyId = companyId

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            id = try container.decode(String.self, forKey: .id)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            itemId = try container.decode(Int.self, forKey: .itemId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}
