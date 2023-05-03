

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var storeId: Int

        public var deliveryCharge: Double

        public var sku: String

        public var affiliateMeta: [String: Any]

        public var quantity: Int

        public var fyndStoreId: String

        public var id: String

        public var sellerIdentifier: String

        public var unitPrice: Double

        public var identifier: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var companyId: Int

        public var itemSize: String

        public var affiliateStoreId: String

        public var modifiedOn: String

        public var hsnCodeId: String

        public var amountPaid: Double

        public var discount: Double

        public var priceEffective: Double

        public var itemId: Int

        public var transferPrice: Int

        public var priceMarked: Double

        public var avlQty: Int

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case deliveryCharge = "delivery_charge"

            case sku

            case affiliateMeta = "affiliate_meta"

            case quantity

            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case sellerIdentifier = "seller_identifier"

            case unitPrice = "unit_price"

            case identifier

            case pdfLinks = "pdf_links"

            case companyId = "company_id"

            case itemSize = "item_size"

            case affiliateStoreId = "affiliate_store_id"

            case modifiedOn = "modified_on"

            case hsnCodeId = "hsn_code_id"

            case amountPaid = "amount_paid"

            case discount

            case priceEffective = "price_effective"

            case itemId = "item_id"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case avlQty = "avl_qty"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.storeId = storeId

            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.affiliateMeta = affiliateMeta

            self.quantity = quantity

            self.fyndStoreId = fyndStoreId

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.unitPrice = unitPrice

            self.identifier = identifier

            self.pdfLinks = pdfLinks

            self.companyId = companyId

            self.itemSize = itemSize

            self.affiliateStoreId = affiliateStoreId

            self.modifiedOn = modifiedOn

            self.hsnCodeId = hsnCodeId

            self.amountPaid = amountPaid

            self.discount = discount

            self.priceEffective = priceEffective

            self.itemId = itemId

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.avlQty = avlQty
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            quantity = try container.decode(Int.self, forKey: .quantity)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemId = try container.decode(Int.self, forKey: .itemId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            avlQty = try container.decode(Int.self, forKey: .avlQty)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var storeId: Int

        public var deliveryCharge: Double

        public var sku: String

        public var affiliateMeta: [String: Any]

        public var quantity: Int

        public var fyndStoreId: String

        public var id: String

        public var sellerIdentifier: String

        public var unitPrice: Double

        public var identifier: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var companyId: Int

        public var itemSize: String

        public var affiliateStoreId: String

        public var modifiedOn: String

        public var hsnCodeId: String

        public var amountPaid: Double

        public var discount: Double

        public var priceEffective: Double

        public var itemId: Int

        public var transferPrice: Int

        public var priceMarked: Double

        public var avlQty: Int

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case deliveryCharge = "delivery_charge"

            case sku

            case affiliateMeta = "affiliate_meta"

            case quantity

            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case sellerIdentifier = "seller_identifier"

            case unitPrice = "unit_price"

            case identifier

            case pdfLinks = "pdf_links"

            case companyId = "company_id"

            case itemSize = "item_size"

            case affiliateStoreId = "affiliate_store_id"

            case modifiedOn = "modified_on"

            case hsnCodeId = "hsn_code_id"

            case amountPaid = "amount_paid"

            case discount

            case priceEffective = "price_effective"

            case itemId = "item_id"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case avlQty = "avl_qty"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.storeId = storeId

            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.affiliateMeta = affiliateMeta

            self.quantity = quantity

            self.fyndStoreId = fyndStoreId

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.unitPrice = unitPrice

            self.identifier = identifier

            self.pdfLinks = pdfLinks

            self.companyId = companyId

            self.itemSize = itemSize

            self.affiliateStoreId = affiliateStoreId

            self.modifiedOn = modifiedOn

            self.hsnCodeId = hsnCodeId

            self.amountPaid = amountPaid

            self.discount = discount

            self.priceEffective = priceEffective

            self.itemId = itemId

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.avlQty = avlQty
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            quantity = try container.decode(Int.self, forKey: .quantity)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemId = try container.decode(Int.self, forKey: .itemId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            avlQty = try container.decode(Int.self, forKey: .avlQty)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)
        }
    }
}
