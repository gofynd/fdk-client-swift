

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var hsnCodeId: String

        public var id: String

        public var modifiedOn: String

        public var itemId: Int

        public var discount: Double

        public var pdfLinks: MarketPlacePdf?

        public var avlQty: Int

        public var deliveryCharge: Double

        public var affiliateMeta: [String: Any]

        public var sellerIdentifier: String

        public var priceMarked: Double

        public var priceEffective: Double

        public var unitPrice: Double

        public var identifier: [String: Any]

        public var amountPaid: Double

        public var storeId: Int

        public var itemSize: String

        public var quantity: Int

        public var affiliateStoreId: String

        public var transferPrice: Int

        public var fyndStoreId: String

        public var sku: String

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case hsnCodeId = "hsn_code_id"

            case id = "_id"

            case modifiedOn = "modified_on"

            case itemId = "item_id"

            case discount

            case pdfLinks = "pdf_links"

            case avlQty = "avl_qty"

            case deliveryCharge = "delivery_charge"

            case affiliateMeta = "affiliate_meta"

            case sellerIdentifier = "seller_identifier"

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"

            case unitPrice = "unit_price"

            case identifier

            case amountPaid = "amount_paid"

            case storeId = "store_id"

            case itemSize = "item_size"

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case transferPrice = "transfer_price"

            case fyndStoreId = "fynd_store_id"

            case sku

            case companyId = "company_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.hsnCodeId = hsnCodeId

            self.id = id

            self.modifiedOn = modifiedOn

            self.itemId = itemId

            self.discount = discount

            self.pdfLinks = pdfLinks

            self.avlQty = avlQty

            self.deliveryCharge = deliveryCharge

            self.affiliateMeta = affiliateMeta

            self.sellerIdentifier = sellerIdentifier

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective

            self.unitPrice = unitPrice

            self.identifier = identifier

            self.amountPaid = amountPaid

            self.storeId = storeId

            self.itemSize = itemSize

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.transferPrice = transferPrice

            self.fyndStoreId = fyndStoreId

            self.sku = sku

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            id = try container.decode(String.self, forKey: .id)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sku = try container.decode(String.self, forKey: .sku)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var hsnCodeId: String

        public var id: String

        public var modifiedOn: String

        public var itemId: Int

        public var discount: Double

        public var pdfLinks: MarketPlacePdf?

        public var avlQty: Int

        public var deliveryCharge: Double

        public var affiliateMeta: [String: Any]

        public var sellerIdentifier: String

        public var priceMarked: Double

        public var priceEffective: Double

        public var unitPrice: Double

        public var identifier: [String: Any]

        public var amountPaid: Double

        public var storeId: Int

        public var itemSize: String

        public var quantity: Int

        public var affiliateStoreId: String

        public var transferPrice: Int

        public var fyndStoreId: String

        public var sku: String

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case hsnCodeId = "hsn_code_id"

            case id = "_id"

            case modifiedOn = "modified_on"

            case itemId = "item_id"

            case discount

            case pdfLinks = "pdf_links"

            case avlQty = "avl_qty"

            case deliveryCharge = "delivery_charge"

            case affiliateMeta = "affiliate_meta"

            case sellerIdentifier = "seller_identifier"

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"

            case unitPrice = "unit_price"

            case identifier

            case amountPaid = "amount_paid"

            case storeId = "store_id"

            case itemSize = "item_size"

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case transferPrice = "transfer_price"

            case fyndStoreId = "fynd_store_id"

            case sku

            case companyId = "company_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.hsnCodeId = hsnCodeId

            self.id = id

            self.modifiedOn = modifiedOn

            self.itemId = itemId

            self.discount = discount

            self.pdfLinks = pdfLinks

            self.avlQty = avlQty

            self.deliveryCharge = deliveryCharge

            self.affiliateMeta = affiliateMeta

            self.sellerIdentifier = sellerIdentifier

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective

            self.unitPrice = unitPrice

            self.identifier = identifier

            self.amountPaid = amountPaid

            self.storeId = storeId

            self.itemSize = itemSize

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.transferPrice = transferPrice

            self.fyndStoreId = fyndStoreId

            self.sku = sku

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            id = try container.decode(String.self, forKey: .id)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sku = try container.decode(String.self, forKey: .sku)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
