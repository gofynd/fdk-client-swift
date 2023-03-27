

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var avlQty: Int

        public var quantity: Int

        public var amountPaid: Double

        public var discount: Double

        public var affiliateStoreId: String

        public var sellerIdentifier: String

        public var storeId: Int

        public var fyndStoreId: String

        public var transferPrice: Int

        public var itemSize: String

        public var priceEffective: Double

        public var modifiedOn: String

        public var affiliateMeta: [String: Any]

        public var hsnCodeId: String

        public var id: String

        public var priceMarked: Double

        public var companyId: Int

        public var deliveryCharge: Double

        public var itemId: Int

        public var sku: String

        public var identifier: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public enum CodingKeys: String, CodingKey {
            case avlQty = "avl_qty"

            case quantity

            case amountPaid = "amount_paid"

            case discount

            case affiliateStoreId = "affiliate_store_id"

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"

            case transferPrice = "transfer_price"

            case itemSize = "item_size"

            case priceEffective = "price_effective"

            case modifiedOn = "modified_on"

            case affiliateMeta = "affiliate_meta"

            case hsnCodeId = "hsn_code_id"

            case id = "_id"

            case priceMarked = "price_marked"

            case companyId = "company_id"

            case deliveryCharge = "delivery_charge"

            case itemId = "item_id"

            case sku

            case identifier

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.avlQty = avlQty

            self.quantity = quantity

            self.amountPaid = amountPaid

            self.discount = discount

            self.affiliateStoreId = affiliateStoreId

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.fyndStoreId = fyndStoreId

            self.transferPrice = transferPrice

            self.itemSize = itemSize

            self.priceEffective = priceEffective

            self.modifiedOn = modifiedOn

            self.affiliateMeta = affiliateMeta

            self.hsnCodeId = hsnCodeId

            self.id = id

            self.priceMarked = priceMarked

            self.companyId = companyId

            self.deliveryCharge = deliveryCharge

            self.itemId = itemId

            self.sku = sku

            self.identifier = identifier

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            quantity = try container.decode(Int.self, forKey: .quantity)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            id = try container.decode(String.self, forKey: .id)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            companyId = try container.decode(Int.self, forKey: .companyId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var avlQty: Int

        public var quantity: Int

        public var amountPaid: Double

        public var discount: Double

        public var affiliateStoreId: String

        public var sellerIdentifier: String

        public var storeId: Int

        public var fyndStoreId: String

        public var transferPrice: Int

        public var itemSize: String

        public var priceEffective: Double

        public var modifiedOn: String

        public var affiliateMeta: [String: Any]

        public var hsnCodeId: String

        public var id: String

        public var priceMarked: Double

        public var companyId: Int

        public var deliveryCharge: Double

        public var itemId: Int

        public var sku: String

        public var identifier: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public enum CodingKeys: String, CodingKey {
            case avlQty = "avl_qty"

            case quantity

            case amountPaid = "amount_paid"

            case discount

            case affiliateStoreId = "affiliate_store_id"

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"

            case transferPrice = "transfer_price"

            case itemSize = "item_size"

            case priceEffective = "price_effective"

            case modifiedOn = "modified_on"

            case affiliateMeta = "affiliate_meta"

            case hsnCodeId = "hsn_code_id"

            case id = "_id"

            case priceMarked = "price_marked"

            case companyId = "company_id"

            case deliveryCharge = "delivery_charge"

            case itemId = "item_id"

            case sku

            case identifier

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.avlQty = avlQty

            self.quantity = quantity

            self.amountPaid = amountPaid

            self.discount = discount

            self.affiliateStoreId = affiliateStoreId

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.fyndStoreId = fyndStoreId

            self.transferPrice = transferPrice

            self.itemSize = itemSize

            self.priceEffective = priceEffective

            self.modifiedOn = modifiedOn

            self.affiliateMeta = affiliateMeta

            self.hsnCodeId = hsnCodeId

            self.id = id

            self.priceMarked = priceMarked

            self.companyId = companyId

            self.deliveryCharge = deliveryCharge

            self.itemId = itemId

            self.sku = sku

            self.identifier = identifier

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            quantity = try container.decode(Int.self, forKey: .quantity)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            id = try container.decode(String.self, forKey: .id)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            companyId = try container.decode(Int.self, forKey: .companyId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)
        }
    }
}
