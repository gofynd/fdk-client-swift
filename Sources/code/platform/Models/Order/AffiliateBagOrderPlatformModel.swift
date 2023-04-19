

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var transferPrice: Int

        public var affiliateStoreId: String

        public var companyId: Int

        public var unitPrice: Double

        public var priceEffective: Double

        public var discount: Double

        public var pdfLinks: MarketPlacePdf?

        public var itemId: Int

        public var hsnCodeId: String

        public var avlQty: Int

        public var deliveryCharge: Double

        public var priceMarked: Double

        public var fyndStoreId: String

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public var storeId: Int

        public var sku: String

        public var quantity: Int

        public var amountPaid: Double

        public var modifiedOn: String

        public var itemSize: String

        public var affiliateMeta: [String: Any]

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case transferPrice = "transfer_price"

            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case unitPrice = "unit_price"

            case priceEffective = "price_effective"

            case discount

            case pdfLinks = "pdf_links"

            case itemId = "item_id"

            case hsnCodeId = "hsn_code_id"

            case avlQty = "avl_qty"

            case deliveryCharge = "delivery_charge"

            case priceMarked = "price_marked"

            case fyndStoreId = "fynd_store_id"

            case sellerIdentifier = "seller_identifier"

            case identifier

            case storeId = "store_id"

            case sku

            case quantity

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"

            case itemSize = "item_size"

            case affiliateMeta = "affiliate_meta"

            case id = "_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.transferPrice = transferPrice

            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.unitPrice = unitPrice

            self.priceEffective = priceEffective

            self.discount = discount

            self.pdfLinks = pdfLinks

            self.itemId = itemId

            self.hsnCodeId = hsnCodeId

            self.avlQty = avlQty

            self.deliveryCharge = deliveryCharge

            self.priceMarked = priceMarked

            self.fyndStoreId = fyndStoreId

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.storeId = storeId

            self.sku = sku

            self.quantity = quantity

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn

            self.itemSize = itemSize

            self.affiliateMeta = affiliateMeta

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            quantity = try container.decode(Int.self, forKey: .quantity)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var transferPrice: Int

        public var affiliateStoreId: String

        public var companyId: Int

        public var unitPrice: Double

        public var priceEffective: Double

        public var discount: Double

        public var pdfLinks: MarketPlacePdf?

        public var itemId: Int

        public var hsnCodeId: String

        public var avlQty: Int

        public var deliveryCharge: Double

        public var priceMarked: Double

        public var fyndStoreId: String

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public var storeId: Int

        public var sku: String

        public var quantity: Int

        public var amountPaid: Double

        public var modifiedOn: String

        public var itemSize: String

        public var affiliateMeta: [String: Any]

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case transferPrice = "transfer_price"

            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case unitPrice = "unit_price"

            case priceEffective = "price_effective"

            case discount

            case pdfLinks = "pdf_links"

            case itemId = "item_id"

            case hsnCodeId = "hsn_code_id"

            case avlQty = "avl_qty"

            case deliveryCharge = "delivery_charge"

            case priceMarked = "price_marked"

            case fyndStoreId = "fynd_store_id"

            case sellerIdentifier = "seller_identifier"

            case identifier

            case storeId = "store_id"

            case sku

            case quantity

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"

            case itemSize = "item_size"

            case affiliateMeta = "affiliate_meta"

            case id = "_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.transferPrice = transferPrice

            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.unitPrice = unitPrice

            self.priceEffective = priceEffective

            self.discount = discount

            self.pdfLinks = pdfLinks

            self.itemId = itemId

            self.hsnCodeId = hsnCodeId

            self.avlQty = avlQty

            self.deliveryCharge = deliveryCharge

            self.priceMarked = priceMarked

            self.fyndStoreId = fyndStoreId

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.storeId = storeId

            self.sku = sku

            self.quantity = quantity

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn

            self.itemSize = itemSize

            self.affiliateMeta = affiliateMeta

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            quantity = try container.decode(Int.self, forKey: .quantity)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
